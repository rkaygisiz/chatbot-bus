import speech_recognition as sr
from gtts import gTTS
import os
import re
from snowballstemmer import TurkishStemmer

r = sr.Recognizer()

text = ""

answIx = -1
key_list = []


keywordsList = ["605", "606", "607", "608", "durak", "kalkış", "fiyatlandırma", "zafer", "tren", 
                "otogar", "koçarlı", "incirliova", "söke", "kuşadası", "germencik",
                "efeler", "bozdoğan", "çine", "nazilli", "sultan", "kuyucak", "karacasu",
                "köşk", "karpuzlu", "yeni", "adü", "forum", "ücret", "kaç", "ad", 
                "birinci", "ikinci", "üçüncü", "dördüncü", "beşinci", "altıncı", "yedinci", 
                "hangi", "öğrenci", "tam", "engelli", "saat", "son", "ilk"]

questionList = [["605", "durak"], ["605", "kalkış"], ["605", "forum"], ["605", "zafer"],
            ["605", "tren"], ["605", "otogar"], ["605", "fiyatlandırma"], ["606", "durak"], 
            ["606", "kalkış"], ["606", "koçarlı"], ["606", "incirliova"], ["606", "söke"],
            ["606", "kuşadası"], ["606", "fiyatlandırma"], ["607", "durak"], ["607", "kalkış"],
            ["607", "germencik"], ["607", "efeler"], ["607", "bozdoğan"], ["607", "çine"],
            ["607", "fiyatlandırma"], ["608", "durak"], ["608", "kalkış"], ["608", "nazilli"],
            ["608", "sultan"], ["608", "kuyucak"], ["608", "karacasu"], ["608", "fiyatlandırma"],
            ["605", "ücret"], ["608", "kaç"], ["606", "ad"], ["607", "üçüncü", "köşk"],
            ["otobüs", "kaç"], ["kuşadası", "karpuzlu", "kaç"], ["yeni", "sultan", "öğrenci"], ["605", "hangi"],
            ["606", "hangi"], ["607", "hangi"], ["608","hangi"], ["adü", "hangi"],
            ["forum", "hangi"], ["zafer", "hangi"], ["tren", "hangi"], ["otogar", "hangi"],
            ["karpuzlu", "hangi"], ["koçarlı", "hangi"], ["incirliova", "hangi"], ["söke", "hangi"],
            ["kuşadası", "hangi"], ["köşk", "hangi"], ["germencik", "hangi"], ["efeler", "hangi"],
            ["bozdoğan", "hangi"], ["çine", "hangi"], ["yeni", "hangi"], 
            ["nazilli", "hangi"], ["sultan", "hangi"], ["kuyucak", "hangi"], 
            ["karacasu", "hangi"], ["adü", "otogar", "birinci"], ["adü", "otogar", "ikinci"],
            ["adü", "otogar", "üçüncü"], ["adü", "otogar", "dördüncü"], ["adü", "otogar", "beşinci"], 
            ["adü", "otogar", "altıncı"], ["adü", "otogar", "yedinci"], ["otogar", "adü", "birinci"], 
            ["otogar", "adü", "ikinci"], ["otogar", "adü", "üçüncü"], ["otogar", "adü", "dördüncü"], 
            ["otogar", "adü", "beşinci"], ["otogar", "adü", "altıncı"], ["otogar", "adü", "yedinci"], 
            ["karpuzlu", "kuşadası", "birinci"], ["karpuzlu", "kuşadası", "ikinci"], ["karpuzlu", "kuşadası", "üçüncü"],
            ["karpuzlu", "kuşadası", "dördüncü"], ["karpuzlu", "kuşadası", "beşinci"], ["karpuzlu", "kuşadası", "altıncı"],
            ["karpuzlu", "kuşadası", "yedinci"], ["kuşadası", "karpuzlu", "birinci"], ["kuşadası", "karpuzlu", "ikinci"], 
            ["kuşadası", "karpuzlu", "üçüncü"], ["kuşadası", "karpuzlu", "dördüncü"], ["kuşadası", "karpuzlu", "beşinci"], 
            ["kuşadası", "karpuzlu", "altıncı"], ["kuşadası", "karpuzlu", "yedinci"], ["köşk", "çine", "birinci"], 
            ["köşk", "çine", "ikinci"], ["köşk", "çine", "üçüncü"], ["köşk", "çine", "dördüncü"], 
            ["köşk", "çine", "beşinci"], ["köşk", "çine", "altıncı"], ["köşk", "çine", "yedinci"], 
            ["çine", "köşk", "birinci"], ["çine", "köşk", "ikinci"], ["çine", "köşk", "üçüncü"],
            ["çine", "köşk", "dördüncü"], ["çine", "köşk", "beşinci"], ["çine", "köşk", "altıncı"], 
            ["çine", "köşk", "yedinci"], ["yeni", "karacasu", "birinci"], ["yeni", "karacasu", "ikinci"],
            ["yeni", "karacasu", "üçüncü"], ["yeni", "karacasu", "dördüncü"], ["yeni", "karacasu", "beşinci"], 
            ["yeni", "karacasu", "altıncı"], ["yeni", "karacasu", "yedinci"], ["karacasu", "yeni", "birinci"], 
            ["karacasu", "yeni", "ikinci"], ["karacasu", "yeni", "üçüncü"], ["karacasu", "yeni", "dördüncü"], 
            ["karacasu", "yeni", "beşinci"], ["karacasu", "yeni", "altıncı"], ["karacasu", "yeni", "yedinci"], 
            ["karpuzlu", "koçarlı", "öğrenci"], ["karpuzlu", "incirliova", "öğrenci"], ["karpuzlu", "söke", "öğrenci"],
            ["karpuzlu", "kuşadası", "öğrenci"], ["karpuzlu", "koçarlı", "tam"], ["karpuzlu", "incirliova", "tam"],
            ["karpuzlu", "söke", "tam"], ["karpuzlu", "kuşadası", "tam"], ["koçarlı", "incirliova", "öğrenci"],
            ["koçarlı", "söke", "öğrenci"], ["koçarlı", "kuşadası", "öğrenci"], ["koçarlı", "incirliova", "tam"],
            ["koçarlı", "söke", "tam"], ["koçarlı", "kuşadası", "tam"], ["incirliova", "söke", "öğrenci"],
            ["incirliova", "kuşadası", "öğrenci"], ["incirliova", "söke", "tam"], ["incirliova", "kuşadası", "tam"],
            ["söke", "kuşadası", "öğrenci"], ["söke", "kuşadası", "tam"], ["köşk", "germencik", "öğrenci"],
            ["köşk", "efeler", "öğrenci"], ["köşk", "bozdoğan", "öğrenci"], ["köşk", "çine", "öğrenci"],
            ["köşk", "germencik", "tam"], ["köşk", "efeler", "tam"], ["köşk", "bozdoğan", "tam"],
            ["köşk", "çine", "tam"], ["germencik", "efeler", "öğrenci"], ["germencik", "bozdoğan", "öğrenci"],
            ["germencik", "çine", "öğrenci"], ["germencik", "efeler", "tam"], ["germencik", "bozdoğan", "tam"],
            ["germencik", "çine", "tam"], ["efeler", "bozdoğan", "öğrenci"], ["efeler", "çine", "öğrenci"],
            ["efeler", "bozdoğan", "tam"], ["efeler", "çine", "tam"], ["bozdoğan", "çine", "öğrenci"],
            ["bozdoğan", "çine", "tam"], ["yeni", "nazilli", "öğrenci"], ["yeni", "sultan", "öğrenci"],
            ["yeni", "kuyucak", "öğrenci"], ["yeni", "karacasu", "öğrenci"], ["yeni", "nazilli", "tam"],
            ["yeni", "sultan", "tam"], ["yeni", "kuyucak", "tam"], ["yeni", "karacasu", "tam"],
            ["nazilli", "sultan", "öğrenci"], ["nazilli", "kuyucak", "öğrenci"], ["nazilli", "karacasu", "öğrenci"],
            ["nazilli", "sultan", "tam"], ["nazilli", "kuyucak", "tam"], ["nazilli", "karacasu", "tam"],
            ["sultan", "kuyucak", "öğrenci"], ["sultan", "karacasu", "öğrenci"], ["sultan", "kuyucak", "tam"],
            ["sultan", "karacasu", "tam"], ["kuyucak", "karacasu", "öğrenci"], ["kuyucak", "karacasu", "tam"],
            ["adü", "forum", "öğrenci"], ["forum", "zafer", "öğrenci"], ["zafer", "tren", "öğrenci"],
            ["tren", "otogar", "öğrenci"], ["adü", "forum", "tam"], ["forum", "zafer", "tam"],
            ["zafer", "tren", "tam"], ["tren", "otogar", "tam"], ["adü", "engelli"], ["otogar", "engelli"],
            ["karpuzlu", "engelli"], ["kuşadası", "engelli"], ["köşk", "engelli"], ["çine", "engelli"],
            ["yeni", "engelli"], ["karacasu", "engelli"], ["605", "hangi"], ["606", "koçarlı", "saat"],
            ["adü", "otogar", "hangi"], ["forum", "hangi"], ["607", "tekerlekli"], ["kuşadası", "karpuzlu", "son"], 
            ["otogar", "adü"]]
            

answerList = ["605 no'lu Otobüs Hattının durakları, ADÜ, Forum Aydın, Zafer Meydanı, Tren Garı ve Otogar'dır.",
            "605 no.'lu Otobüs Hattı’nın kalkış saatleri 6.15, 9.00, 9.45, 12.05, 14.20, 16.50 ve 18.30'dur.",
            "605 no.'lu Otobüs Hattı’nın Forum Aydın'a varış süresi 10 dakikadır.",
            "605 no.'lu Otobüs Hattı’nın Zafer Meydanı'na varış süresi 25 dakikadır.",
            "605 no.'lu Otobüs Hattı’nın Tren Garı'na varış süresi 30 dakikadır.",
            "605 no.'lu Otobüs Hattı'nın Otogar'a varış süresi 50 dakikadır.",
            "605 no.'lu Otobüs Hattı'nın fiyatlandırması herkes için 2.90 TL'dir.",
            "606 no'lu Otobüs Hattının durakları, Karpuzlu, Koçarlı, İncirliova, Söke ve Kuşadası'dır.",
            "606 no.'lu Otobüs Hattı'nın kalkış saatleri 6.00, 8.45, 9.30, 11.50, 14.05, 16.35 ve 18.15'dir.",
            "606 no.'lu Otobüs Hattı'nın Koçarlı'ya varış süresi 35 dakikadır.",
            "606 no.'lu Otobüs Hattı'nın İncirliova'ya varış süresi 1 saat 25 dakikadır.",
            "606 no.'lu Otobüs Hattı'nın Söke'ye varış süresi 1 saat 55 dakikadır.",
            "606 no.'lu Otobüs Hattı'nın Kuşadası'na varış süresi 1 saat 35 dakikadır.",
            "606 no.'lu Otobüs Hattı'nın fiyatlandırması öğrenciler için 2.50 TL ile 4.40 TL arasında, öğrenci olmayanlarda 2.90 TL ile 4.80 TL arasında değişmektedir.",
            "607 no'lu Otobüs Hattının durakları, Köşk, Germencik, Efeler, Bozdoğan ve Çine'dir.",
            "607 no.'lu Otobüs Hattı'nın kalkış saatleri 7.30, 10.15, 11.00, 13.20, 15.35, 18.05, 19.45'dir.",
            "607 no.'lu Otobüs Hattı'nın Germencik'e varış süresi 30 dakikadır.",
            "607 no.'lu Otobüs Hattı'nın Efeler'e varış süresi 55 dakikadır.",
            "607 no.'lu Otobüs Hattı'nın Bozdoğan'a varış süresi 1 saat 15 dakikadır.",
            "607 no.'lu Otobüs Hattı'nın Çine'ye varış süresi 1 saat 35 dakikadır.",
            "607 no.'lu Otobüs Hattı'nın fiyatlandırması öğrenciler için 2.60 TL ile 3.50 TL arasında, öğrenci olmayanlarda 3 TL ile 3.90 TL arasında değişmektedir.",
            "608 no'lu Otobüs Hattının durakları, Yeni Pazar, Nazilli, Sultan Hisar, Kuyucak ve Karasu'dur.",
            "608 no.'lu Otobüs Hattı'nın kalkış saatleri 7.20, 8.20, 9.20, 12.20, 14.20, 16.20, 18.20'dir.",
            "608 no.'lu Otobüs Hattı'nın Nazilli'ye varış süresi 20 dakikadır.",
            "608 no.'lu Otobüs Hattı'nın Sultan Hisar'a varış süresi 1 saat 5 dakikadır.",
            "608 no.'lu Otobüs Hattı'nın Kuyucak'a varış süresi 1 saat 20 dakikadır.",
            "608 no.'lu Otobüs Hattı'nın Karacasu'ya varış süresi 1 saat 20 dakikadır.",
            "608 no.'lu Otobüs Hattı'nın fiyatlandırması öğrenciler için 2.80 TL ile 3.50 TL arasında, öğrenci olmayanlarda 3.20 TL ile 3.90 TL arasında değişmektedir.",
            "Otobüs ücreti 2.90 TL’dir.",
            "5 durak vardır.",
            "Kuşadası, Söke, İncirliova, Koçarlı, Karpuzlu.",
            "Saat 11 de kalkıyor.",
            "Otobüslerde 7 sefer vardır.",
            "2 saat 40 dk. yolculuk sürer.",
            "Öğrenci ücreti 3 TL.",
            "605 numaralı otobüsümüz sırasıyla Adü, Forum Aydın, Zafer Meydanı, Tren Garı, Otogar duraklarına gitmektedir.",
            "606 numaralı otobüsümüz sırasıyla Karpuzlu, Koçarlı, İncirliova, Söke, Kuşadası duraklarına gitmektedir.",
            "607 numaralı otobüsümüz sırasıyla Köşk, Germencik, Efeler, Bozdoğan, Çine duraklarına gitmektedir.",
            "608 numaralı otobüsümüz sırasıyla Yeni Pazar, Nazilli, Sultan Hisar, Kuyucak, Karacasu duraklarına gitmektedir.",
            "Adü durağına 605 numaralı otobüsümüz gitmektedir.",
            "Forum Aydın durağına 605 numaralı otobüsümüz gitmektedir.",
            "Zafer Meydanı durağına 605 numaralı otobüsümüz gitmektedir.",
            "Tren garı durağına 605 numaralı otobüsümüz gitmektedir.",
            "Otogar durağına 605 numaralı otobüsümüz gitmektedir.",
            "Karpuzlu durağına 606 numaralı otobüsümüz gitmektedir.",
            "Koçarlı durağına 606 numaralı otobüsümüz gitmektedir.",
            "İncirliova durağına 606 numaralı otobüsümüz gitmektedir.",
            "Söke durağına 606 numaralı otobüsümüz gitmektedir.",
            "Kuşadası durağına 606 numaralı otobüsümüz gitmektedir.",
            "Köşk durağına 607 numaralı otobüsümüz gitmektedir.",
            "Germencik durağına 607 numaralı otobüsümüz gitmektedir.",
            "Efeler durağına 607 numaralı otobüsümüz gitmektedir.",
            "Bozdoğan durağına 607 numaralı otobüsümüz gitmektedir.",
            "Çine durağına 607 numaralı otobüsümüz gitmektedir.",
            "Yeni Pazar durağına 608 numaralı otobüsümüz gitmektedir.",
            "Nazilli durağına 608 numaralı otobüsümüz gitmektedir.",
            "Sultan Hisar durağına 608 numaralı otobüsümüz gitmektedir.",
            "Kuyucak durağına 608 numaralı otobüsümüz gitmektedir.",
            "Karacasu durağına 608 numaralı otobüsümüz gitmektedir.",
            "Adü'den Otogar'a giden birinci seferimiz saat 06.15'te kalkmaktadır.",
            "Adü'den Otogar'a giden ikinci seferimiz saat 09.00'da kalkmaktadır.",
            "Adü'den Otogar'a giden üçüncü seferimiz saat 09.45'te kalkmaktadır.",
            "Adü'den Otogar'a giden dördüncü seferimiz saat 12.05'te kalkmaktadır.",
            "Adü'den Otogar'a giden beşinci seferimiz saat 14.20'de kalkmaktadır.",
            "Adü'den Otogar'a giden altıncı seferimiz saat 16.50'de kalkmaktadır.",
            "Adü'den Otogar'a giden yedinci seferimiz saat 18.30'da kalkmaktadır.",
            "Otogar'dan Adü'ye giden birinci seferimiz saat 06.15'te kalkmaktadır.",
            "Otogar'dan Adü'ye giden ikinci seferimiz saat 09.00'da kalkmaktadır.",
            "Otogar'dan Adü'ye giden üçüncü seferimiz saat 09.45'te kalkmaktadır.",
            "Otogar'dan Adü'ye giden dördüncü seferimiz saat 12.05'te kalkmaktadır.",
            "Otogar'dan Adü'ye giden beşinci seferimiz saat 14.20'de kalkmaktadır.",
            "Otogar'dan Adü'ye giden altıncı seferimiz saat 16.50'de kalkmaktadır.",
            "Otogar'dan Adü'ye giden yedinci seferimiz saat 18.30'da kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden birinci seferimiz saat 06.00'da kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden ikinci seferimiz saat 08.45'te kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden üçüncü seferimiz saat 09.30'da kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden dördüncü seferimiz saat 11.50'de kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden beşinci seferimiz saat 14.05'te kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden altıncı seferimiz saat 16.35'te kalkmaktadır.",
            "Karpuzlu'dan Kuşadası'na giden yedinci seferimiz saat 18.15'te kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden birinci seferimiz saat 07.00'de kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden ikinci seferimiz saat 09.45'te kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden üçüncü seferimiz saat 10.30'da kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden dördüncü seferimiz saat 12.50'de kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden beşinci seferimiz saat 15.05'te kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden altıncı seferimiz saat 17.35'te kalkmaktadır.",
            "Kuşadası'ndan Karpuzlu'ya giden yedinci seferimiz saat 19.15'te kalkmaktadır.",
            "Köşk'ten Çine'ye giden birinci seferimiz saat 07.30'da kalkmaktadır.",
            "Köşk'ten Çine'ye giden ikinci seferimiz saat 10.15'te kalkmaktadır.",
            "Köşk'ten Çine'ye giden üçüncü sefer saat 11.00'de kalkmaktadır.",
            "Köşk'ten Çine'ye giden dördüncü seferimiz saat 13.20'de kalkmaktadır.",
            "Köşk'ten Çine'ye giden beşinci seferimiz saat 15.35'te kalkmaktadır.",
            "Köşk'ten Çine'ye giden altıncı seferimiz saat 8.05'te kalkmaktadır.",
            "Köşk'ten Çine'ye giden yedinci seferimiz saat 19.45'te kalkmaktadır.",
            "Çine'den Köşk'e giden birinci seferimiz saat 08.30'da kalkmaktadır.",
            "Çine'den Köşk'e giden ikinci seferimiz saat 11.15'te kalkmaktadır.",
            "Çine'den Köşk'e giden üçüncü seferimiz saat 12.00'de kalkmaktadır.",
            "Çine'den Köşk'e giden dördüncü seferimiz saat 14.20'de kalkmaktadır.",
            "Çine'den Köşk'e giden beşinci seferimiz saat 16.35'te kalkmaktadır.",
            "Çine'den Köşk'e giden altıncı seferimiz saat 19.05'te kalkmaktadır.",
            "Çine'den Köşk'e giden yedinci seferimiz saat 20.45'te kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden birinci seferimiz saat 07.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden ikinci seferimiz saat 08.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden üçüncü seferimiz saat 09.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden dördüncü seferimiz saat 12.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden beşinci seferimiz saat 14.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden altıncı seferimiz saat 16.20'de kalkmaktadır.",
            "Yeni Pazar'dan Karacasu'ya giden yedinci seferimiz saat 18.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden birinci seferimiz saat 07.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden ikinci seferimiz saat 08.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden üçüncü seferimiz saat 09.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden dördüncü seferimiz saat 12.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden beşinci seferimiz saat 14.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden altıncı seferimiz saat 16.20'de kalkmaktadır.",
            "Karacasu'dan Yeni Pazar'a giden yedinci seferimiz saat 18.20'de kalkmaktadır.",
            "Karpuzlu'dan Koçarlı'ya öğrenci ücreti 2.80 TL'dir.",
            "Karpuzlu'dan İncirliova'ya öğrenci ücreti 3.10 TL'dir.",
            "Karpuzlu'dan Söke'ye öğrenci ücreti 3.40 TL'dir.",
            "Karpuzlu'dan Kuşadası'na öğrenci ücreti 4.40 TL'dir.",
            "Karpuzlu'dan Koçarlı'ya tam yolcu ücreti 3.20 TL'dir.",
            "Karpuzlu'dan İncirliova'ya tam yolcu ücreti 3.50 TL'dir.",
            "Karpuzlu'dan Söke'ye tam yolcu ücreti 3.80 TL'dir.",
            "Karpuzlu'dan Kuşadası'na tam yolcu ücreti 4.80 TL'dir.",
            "Koçarlı'dan İncirliova'ya öğrenci ücreti 2.60 TL'dir.",
            "Koçarlı'dan Söke'ye öğrenci ücreti 2.90 TL'dir.",
            "Koçarlı'dan Kuşadası'na öğrenci ücreti 4.00 TL'dir.",
            "Koçarlı'dan İncirliova'ya tam yolcu ücreti 3.00 TL'dir.",
            "Koçarlı'dan Söke'ye tam yolcu ücreti 3.30 TL'dir.",
            "Koçarlı'dan Kuşadası'na tam yolcu ücreti 4.40 TL'dir.",
            "İncirliova'dan Söke'ye öğrenci ücreti 2.50 TL'dir.",
            "İncirliova'dan Kuşadası'na öğrenci ücreti 2.70 TL'dir.",
            "İncirliova'dan Söke'ye tam yolcu ücreti 2.90 TL'dir.",
            "İncirliova'dan Kuşadası'na tam yolcu ücreti 3.10 TL'dir.",
            "Söke'den Kuşadası'na öğrenci ücreti 3.50 TL'dir.",
            "Söke'den Kuşadası'na tam yolcu ücreti 3.90 TL'dir.",
            "Köşk'ten Germencik'e öğrenci ücreti 2.60 TL'dir.",
            "Köşk'ten Efeler'e öğrenci ücreti 3.00 TL'dir.",
            "Köşk'ten Bozdoğan'a öğrenci ücreti 3.30 TL'dir.",
            "Köşk'ten Çine'ye öğrenci ücreti 3.50 TL'dir.",
            "Köşk'ten Germencik'e tam yolcu ücreti 3.00 TL'dir.",
            "Köşk'ten Efeler'e tam yolcu ücreti 3.40 TL'dir.",
            "Köşk'ten Bozdoğan'a tam yolcu ücreti 3.70 TL'dir.",
            "Köşk'ten Çine'ye tam yolcu ücreti 3.90 TL'dir.",
            "Germencik'ten Efeler'e öğrenci ücreti 2.70 TL'dir.",
            "Germencik'ten Bozdoğan'a öğrenci ücreti 3.10 TL'dir.",
            "Germencik'ten Çine'ye öğrenci ücreti 3.30 TL'dir.",
            "Germencik'ten Efeler'e tam yolcu ücreti 3.10 TL'dir.",
            "Germencik'ten Bozdoğan'a tam yolcu ücreti 3.50 TL'dir.",
            "Germencikten Çineye tam yolcu ücreti 3.70 TL'dir.",
            "Efeler'den Bozdoğan'a öğrenci ücreti 2.80 TL'dir.",
            "Efeler'den Çine'ye öğrenci ücreti 3.00 TL'dir.",
            "Efeler'den Bozdoğan'a tam yolcu ücreti 3.20 TL'dir.",
            "Efeler'den Çine'ye tam yolcu ücreti 3.40 TL'dir.",
            "Bozdoğan'dan Çine'ye öğrenci ücreti 2.50 TL'dir.",
            "Bozdoğan'dan Çine'ye tam yolcu ücreti 2.90 TL'dir.",
            "Yeni Pazar'dan Nazilli'ye öğrenci ücreti 2.80 TL'dir.",
            "Yeni Pazar'dan Sultan Hisar'a öğrenci ücreti 3.00 TL'dir.",
            "Yeni Pazar'dan Kuyucak'a öğrenci ücreti 3.40 TL'dir.",
            "Yeni Pazar'dan Karacasu'ya öğrenci ücreti 3.50 TL'dir.",
            "Yeni Pazar'dan Nazilli'ye tam yolcu ücreti 3.20 TL'dir.",
            "Yeni Pazar'dan Sultan Hisar'a tam yolcu ücreti 3.40 TL'dir.",
            "Yeni Pazar'dan Kuyucak'a tam yolcu ücreti 3.80 TL'dir.",
            "Yeni Pazar'dan Karacasu'ya tam yolcu ücreti 3.90 TL'dir.",
            "Nazilli'den Sultan Hisar'a öğrenci ücreti 2.80 TL'dir.",
            "Nazilli'den Kuyucak'a öğrenci ücreti 3.20 TL'dir.",
            "Nazilli'den Karacasu'ya öğrenci ücreti 3.30 TL'dir.",
            "Nazilli'den Sultan Hisar'a tam yolcu ücreti 3.20 TL'dir.",
            "Nazilli'den Kuyucak'a tam yolcu ücreti 3.60 TL'dir.",
            "Nazilli'den Karacasu'ya tam yolcu ücreti 3.70 TL'dir.",
            "Sultan Hisar'dan Kuyucak'a öğrenci ücreti 3.00 TL'dir.",
            "Sultan Hisar'dan Karacasu'ya öğrenci ücreti 3.10 TL'dir.",
            "Sultan Hisar'dan Kuyucak'a tam yolcu ücreti 3.40 TL'dir.",
            "Sultan Hisar'dan Karacasu'ya tam yolcu ücreti 3.50 TL'dir.",
            "Kuyucak'tan Karacasu'ya öğrenci ücreti 2.90 TL'dir.",
            "Kuyucak'tan Karacasu'ya tam yolcu ücreti 3.30 TL'dir.",
            "Adü'den Forum Aydın'a öğrenci ücreti 2.90 TL'dir.",
            "Forum Aydın'dan Zafer Meydanı'na öğrenci ücreti 2.90 TL'dir.",
            "Zafer Meydanı'ndan Tren Garı'na öğrenci ücreti 2.90 TL'dir.",
            "Tren Garı'ndan Otogar'a öğrenci ücreti 2.90 TL'dir.",
            "Adü'den Forum Aydın'a tam yolcu ücreti 2.90 TL'dir.",
            "Forum Aydın'dan Zafer Meydanı'na tam yolcu ücreti 2.90 TL'dir.",
            "Zafer Meydanı'ndan Tren Garı'na tam yolcu ücreti 2.90 TL'dir.",
            "Tren Garı'ndan Otogar'a tam yolcu ücreti 2.90 TL'dir.",
            "Adü - Otogar istikametinde giden otobüs seferlerimizin hepsinde engelli arabasıyla seyahat edilebilmektedir.",
            "Otogar - Adü istikametinde giden otobüs seferlerimizin hepsinde engelli arabasıyla seyahat edilebilmektedir.",
            "Karpuzlu - Kuşadası istikametinde giden 1.sefer,3.sefer,5.sefer,6.sefer ve 7.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "Kuşadası - Karpuzlu istikametinde giden 1.sefer,2.sefer,3.sefer,4.sefer ve 7.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "Köşk - Çine istikametinde giden 2.sefer,4.sefer ve 6.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "Çine - Köşk istikametinde giden 1.sefer,3.sefer,5.sefer ve 7.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "Yeni Pazar - Karacasu istikametinde giden 1.sefer,3.sefer,4.sefer ve 6.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "Karacasu - Yeni Pazar istikametinde giden 2.sefer,5.sefer ve 7.seferlerimizde engelli arabasıyla seyahat edilebilmektedir.",
            "605 numara Adü, Forum, Meydan, Tren Garı ve Otogardan geçiyor.",
            "606 numara Koçarlı’dan 09:05, 11:25, 12:30, 14:50, 17:05, 19:35, 21:10 saatlerinde geçiyor.",
            "Adü'den Otogar'a 605 numaralı otobüs gidiyor.",
            "Forum Aydın durağından 605 numaralı otobüs geçiyor.",
            "607 numaranın 1, 3, 5 ve 7'nci seferlerde tekerlekli sandalye bulunmaktadır.",
            "Kuşadası’ndan Karpuzlu’ya son otobüs seferi saat 19:15'tedir.",
            "Otogardan Adü’ye ilk sefer 6:15'te başlıyor."]

def take_question():
    with sr.Microphone() as source:
        r.adjust_for_ambient_noise(source)

        print("Lütfen, bir şey söyleyin...")
        data = r.record(source, duration=8)

        print("Sesiniz Metne Dönüştürülüyor…")
        global text
        text = r.recognize_google(data, language='tr')
    print("\nSorunuz: " + text)
    
    
def analyze(text):
    lowered_text = text.lower()
    word_list = list(filter(None, re.split('[.,!? ]', lowered_text)))
    return word_list

def stemming(word):
    turkish_stemmer = TurkishStemmer()
    ts = turkish_stemmer.stemWord(word)
    return ts

def analyze_question():
    # analyze the sentence
    word_list = analyze(text)
    # Show word list
    print("\nTokenized Sentence")
    print(word_list)

    # find key words in tbe sentence
    for word in word_list:
        if word in keywordsList:
            key_list.append(word)
        else:
            stem = stemming(word)
            if stem in keywordsList:
                key_list.append(stem)

    # print key words
    print("\nKey Words: ")
    print(key_list)

    # find question from keyList
    for question in questionList:
        if set(question).issubset(set(key_list)):
            global answIx
            answIx = questionList.index(question)
            break

    if answIx != -1:
        print(answerList[answIx])
        tts = gTTS(text=answerList[answIx], lang='tr')
    else:
        tts = gTTS(text="Bu soruya bir cevabım yok.", lang='tr')
    tts.save("answer.mp3")
    os.system("answer.mp3")
    
    
if __name__ == '__main__':
    take_question()
    analyze_question()