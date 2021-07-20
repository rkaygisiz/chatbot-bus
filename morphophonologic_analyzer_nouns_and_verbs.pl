initial(q0).

final(qn1).
final(qn2).
final(qn3).
final(qn4a).
final(qn4b).

final(qv1).
final(qv2).
final(qv3a).
final(qv3b).
final(qv3c).
final(qv3d).
final(qv4a).
final(qv4b).
final(qv5).

final(q4).

t(q0,noun,qn1).
t(qn1,plur,qn2).
t(qn1,poss,qn3).
t(qn1,loc,qn4a).
t(qn1,gen,qn4a).
t(qn1,acc,qn4b).
t(qn1,dat,qn4b).
t(qn1,abl,qn4b).
t(qn2,poss,qn3).
t(qn2,loc,qn4a).
t(qn2,gen,qn4a).
t(qn2,acc,qn4b).
t(qn2,dat,qn4b).
t(qn2,abl,qn4b).
t(qn3,loc,qn4a).
t(qn3,gen,qn4a).
t(qn3,acc,qn4b).
t(qn3,dat,qn4b).
t(qn4a,rel,qn1).

t(q0,verb,qv1).
t(qv1,tDefPast,qv3a).
t(qv1,tInDefPast,qv3b).
t(qv1,tProg,qv3b).
t(qv1,tAor,qv3b).
t(qv1,tFut,qv3b).
t(qv1,tNec,qv3b).
t(qv1,tCon,qv3c).
t(qv1,tOpt,qv3d).
t(qv1,neg,qv2).
t(qv2,tDefPast,qv3a).
t(qv2,tInDefPast,qv3b).
t(qv2,tProg,qv3b).
t(qv2,tAor,qv3b).
t(qv2,tFut,qv3b).
t(qv2,tNec,qv3b).
t(qv2,tCon,qv3c).
t(qv2,tOpt,qv3d).
t(qv3a,aCon,qv4a).
t(qv3a,aDefPast,qv4a).
t(qv3a,pDefIndýc,qv5).
t(qv3b,pIndýc,qv5).
t(qv3b,aDefPast,qv4a).
t(qv3b,aInDefPast,qv4b).
t(qv3b,aCon,qv4a).
t(qv3c,aDefPast,qv4a).
t(qv3c,aInDefPast,qv4b).
t(qv3c,pDefIndýc,qv5).
t(qv3d,aDefPast,qv4a).
t(qv3d,aInDefPast,qv4b).
t(qv3d,pIndýc,qv5).
t(qv4a,pDefIndýc,qv5).
t(qv4b,pIndýc,qv5).

% fiiller
allomorph(git,verb).
allomorph(bul,verb).
allomorph(gel,verb).
allomorph(uyu,verb).
allomorph(ol,verb).
allomorph(tap,verb).
allomorph(sun,verb).
allomorph(kay,verb).
allomorph(in,verb).
allomorph(býrak,verb).

% olumsuzluk ekleri
allomorph(ma,neg).
allomorph(me,neg).
allomorph(mý,neg).
allomorph(mi,neg).
allomorph(mu,neg).
allomorph(mü,neg).

% görülen geçmiþ zaman
allomorph(dý,tDefPast).
allomorph(di,tDefPast).
allomorph(tý,tDefPast).
allomorph(ti,tDefPast).
allomorph(du,tDefPast).
allomorph(dü,tDefPast).
allomorph(tu,tDefPast).
allomorph(tü,tDefPast).

% duyulan geçmiþ zaman
allomorph(mýþ,tInDefPast).
allomorph(miþ,tInDefPast).
allomorph(muþ,tInDefPast).
allomorph(müþ,tInDefPast).

% þimdiki zaman
allomorph(yor,tProg).
allomorph(ýyor,tProg).
allomorph(iyor,tProg).
allomorph(uyor,tProg).
allomorph(üyor,tProg).

% gelecek zaman
allomorph(ecek,tFut).
allomorph(acak,tFut).
allomorph(yecek,tFut).
allomorph(yacak,tFut).

% geniþ zaman
allomorph(r,tAor).
allomorph(ýr,tAor).
allomorph(ir,tAor).
allomorph(ur,tAor).
allomorph(ür,tAor).
allomorph(ar,tAor).
allomorph(er,tAor).

% gereklilik kipi
allomorph(meli,tNec).
allomorph(malý,tNec).
allomorph(malýy,tNec).
allomorph(meliy,tNec).

% þart kipi
allomorph(se,tCon).
allomorph(sa,tCon).
allomorph(say,tCon).
allomorph(sey,tCon).

% istek kipi
allomorph(e,tOpt).
allomorph(a,tOpt).
allomorph(ya,tOpt).
allomorph(ye,tOpt).

% ek fiilin þart birleþik zaman kipi
allomorph(se,aCon).
allomorph(sa,aCon).

% ek fiilin hikaye birleþik zaman kipi
allomorph(dý,aDefPast).
allomorph(di,aDefPast).
allomorph(tý,aDefPast).
allomorph(ti,aDefPast).
allomorph(du,aDefPast).
allomorph(dü,aDefPast).
allomorph(tu,aDefPast).
allomorph(tü,aDefPast).
allomorph(ydý,aDefPast).
allomorph(ydi,aDefPast).
allomorph(ydü,aDefPast).
allomorph(ydu,aDefPast).

% ek fiilin rivayet birleþik zaman kipi
allomorph(mýþ,aInDefPast).
allomorph(miþ,aInDefPast).
allomorph(muþ,aInDefPast).
allomorph(müþ,aInDefPast).

% þahýs ekleri
% birinci tekil
allomorph(m,pIndýc).
allomorph(ým,pIndýc).
allomorph(im,pIndýc).
allomorph(um,pIndýc).
allomorph(üm,pIndýc).
allomorph(yým,pIndýc).
allomorph(yim,pIndýc).
allomorph(yum,pIndýc).
allomorph(yüm,pIndýc).

% ikinci tekil
allomorph(n,pIndýc).
allomorph(ýn,pIndýc).
allomorph(in,pIndýc).
allomorph(un,pIndýc).
allomorph(ün,pIndýc).
allomorph(sýn,pIndýc).
allomorph(sin,pIndýc).
allomorph(sun,pIndýc).
allomorph(sün,pIndýc).

% birinci çoðul
allomorph(ýz,pIndýc).
allomorph(iz,pIndýc).
allomorph(uz,pIndýc).
allomorph(üz,pIndýc).
allomorph(ýk,pIndýc).
allomorph(ik,pIndýc).
allomorph(yýz,pIndýc).
allomorph(yiz,pIndýc).
allomorph(yuz,pIndýc).
allomorph(yüz,pIndýc).

% ikinci çoðul
allomorph(sýnýz,pIndýc).
allomorph(siniz,pIndýc).
allomorph(sunuz,pIndýc).
allomorph(sünüz,pIndýc).
allomorph(ýnýz,pIndýc).
allomorph(iniz,pIndýc).
allomorph(unuz,pIndýc).
allomorph(ünüz,pIndýc).

% üçüncü çoðul
allomorph(ler,pIndýc).
allomorph(lar,pIndýc).

% ek fiilden sonra gelen þahýs kipleri
allomorph(m,pDefIndýc).
allomorph(n,pDefIndýc).
allomorph(k,pDefIndýc).
allomorph(nýz,pDefIndýc).
allomorph(niz,pDefIndýc).
allomorph(nuz,pDefIndýc).
allomorph(nüz,pDefIndýc).
allomorph(ler,pDefIndýc).
allomorph(lar,pDefIndýc).

% isimler
allomorph(kitap,noun).
allomorph(kitab,noun).
allomorph(top,noun).
allomorph(tob,noun).
allomorph(tavþan,noun).
allomorph(park,noun).
allomorph(okul,noun).
allomorph(durak,noun).
allomorph(durað,noun).
allomorph(fiyat,noun).
allomorph(fiyatlandýrma,noun).
allomorph(forum,noun).
allomorph(zafer,noun).
allomorph(tren,noun).
allomorph(otogar,noun).
allomorph(koçarlý,noun).
allomorph(incirliova,noun).
allomorph(söke,noun).
allomorph(kuþadasý,noun).
allomorph(germencik,noun).
allomorph(efeler,noun).
allomorph(bozdoðan,noun).
allomorph(çine,noun).
allomorph(nazilli,noun).
allomorph(kuyucak,noun).
allomorph(karacasu,noun).
allomorph(köþk,noun).
allomorph(hangi,noun).
allomorph(birinci,noun).
allomorph(ikinci,noun).
allomorph(üçüncü,noun).
allomorph(dördüncü,noun).
allomorph(beþinci,noun).
allomorph(altýncý,noun).
allomorph(yedinci,noun).
allomorph(tam,noun).
allomorph(öðrenci,noun).
allomorph(son,noun).
allomorph(sefer,noun).
allomorph(engelli,noun).
allomorph(ücret,noun).
allomorph(kalkýþ,noun).

% çokluk eki
allomorph(ler,plur).
allomorph(lar,plur).

% iyelik eki
allomorph(i,poss).
allomorph(im,poss).
allomorph(imiz,poss).
allomorph(in,poss).
allomorph(iniz,poss).
allomorph(ý,poss).
allomorph(ým,poss).
allomorph(ýn,poss).
allomorph(ýmýz,poss).
allomorph(ýnýz,poss).
allomorph(u,poss).
allomorph(um,poss).
allomorph(un,poss).
allomorph(umuz,poss).
allomorph(unuz,poss).
allomorph(ü,poss).
allomorph(üm,poss).
allomorph(ün,poss).
allomorph(ümüz,poss).
allomorph(ünüz,poss).

% belirtme hali eki
allomorph(i,acc).
allomorph(ý,acc).
allomorph(ni,acc).
allomorph(ný,acc).
allomorph(u,acc).
allomorph(ü,acc).
allomorph(nu,acc).
allomorph(nü,acc).

% ayrýlma hali eki
allomorph(den,abl).
allomorph(dan,abl).
allomorph(ten,abl).
allomorph(tan,abl).
allomorph(nden,abl).
allomorph(ndan,abl).

% yönelme hali eki
allomorph(e,dat).
allomorph(a,dat).
allomorph(ye,dat).
allomorph(ya,dat).
allomorph(ne,dat).
allomorph(na,dat).

% bulunma hali eki
allomorph(de,loc).
allomorph(da,loc).
allomorph(te,loc).
allomorph(ta,loc).
allomorph(nde,loc).
allomorph(nda,loc).

% ilgi eki
allomorph(in,gen).
allomorph(ýn,gen).
allomorph(un,gen).
allomorph(ün,gen).
allomorph(nin,gen).
allomorph(nýn,gen).
allomorph(nun,gen).
allomorph(nün,gen).

% ilgi zamiri
allomorph(ki,rel).

noun_and_verb_analyze(String, AllomorphList):-
   initial(State),
   noun_and_verb_analyze(String, State, AllomorphList, []).

noun_and_verb_analyze('', State, [], _):- final(State).

noun_and_verb_analyze(String, CurrentState, [Prefix|Rest_of_List], Previous_Allomorph):-
   concat(Prefix, Suffix, String),
   allomorph(Prefix, Morpheme),
   t(CurrentState, Morpheme, NextState),
   append(Previous_Allomorph, [Prefix], Allomorphs),
   ((Morpheme == 'tProg') -> progressiveHarmonize(Allomorphs); harmonize(Allomorphs)),
   noun_and_verb_analyze(Suffix, NextState, Rest_of_List, [Prefix]).
   
progressiveHarmonize([Allomorph1, Allomorph2]):-
   string_to_list(Allomorph1, LeftCodes),
   string_to_list(Allomorph2, RightCodes),
   vowel_vowel_progressiveHarmony(LeftCodes, RightCodes),
   consonant_consonant_harmony(LeftCodes, RightCodes),
   vowel_consonant_harmony(LeftCodes, RightCodes),
   consonant_vowel_harmony(LeftCodes, RightCodes).

vowel_vowel_progressiveHarmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   vowel(LeftChar1),
   consonant(RightChar1),
   vowel(RightChar2),
   (LeftChar1 = ý; LeftChar1 = i; LeftChar1 = u; LeftChar1 = ü).
   
vowel_vowel_progressiveHarmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   vowel(LeftChar2),
   vowel(RightChar1),
   (((LeftChar2 = a; LeftChar2 = ý), (RightChar1 = a; RightChar1 = ý));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar2 = ö; LeftChar2 = ü), (RightChar1 = e; RightChar1 = ü))
   ).

harmonize([_]).

harmonize([Allomorph1, Allomorph2]):-
   string_to_list(Allomorph1, LeftCodes),
   string_to_list(Allomorph2, RightCodes),
   vowel_vowel_harmony(LeftCodes, RightCodes),
   consonant_consonant_harmony(LeftCodes, RightCodes),
   vowel_consonant_harmony(LeftCodes, RightCodes),
   consonant_vowel_harmony(LeftCodes, RightCodes).

vowel_vowel_harmony(_, [RightCode1]):-
   char_code(RightChar1, RightCode1),
   consonant(RightChar1).

vowel_vowel_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   vowel(LeftChar1),
   consonant(LeftChar2),
   consonant(RightChar1),
   vowel(RightChar2),
   (vowel(LeftChar1), (RightChar1 = k, RightChar2 = i)
   ).

vowel_vowel_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   vowel(LeftChar1),
   consonant(RightChar1),
   vowel(RightChar2),
  (((LeftChar1 = a; LeftChar1 = ý), (RightChar2 = a; RightChar2 = ý));
   ((LeftChar1 = o; LeftChar1 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar1 = e; LeftChar1 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar1 = ö; LeftChar1 = ü), (RightChar2 = e; RightChar2 = ü))
   ).

vowel_vowel_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   consonant(LeftChar1),
   vowel(LeftChar2),
   consonant(RightChar1),
   vowel(RightChar2),
  (((LeftChar2 = a; LeftChar2 = ý), (RightChar2 = a; RightChar2 = ý));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar2 = ö; LeftChar2 = ü), (RightChar2 = e; RightChar2 = ü))
   ).

vowel_vowel_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2, LeftCode3|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(LeftChar3, LeftCode3),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   consonant(LeftChar1),
   consonant(LeftChar2),
   vowel(LeftChar3),
   consonant(RightChar1),
   vowel(RightChar2),
  (((LeftChar3 = a; LeftChar3 = ý), (RightChar2 = a; RightChar2 = ý));
   ((LeftChar3 = o; LeftChar3 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar3 = e; LeftChar3 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar3 = ö; LeftChar3 = ü), (RightChar2 = e; RightChar2 = ü))
   ).
   
vowel_vowel_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2, LeftCode3|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   char_code(LeftChar3, LeftCode3),
   consonant(LeftChar1),
   consonant(LeftChar2),
   vowel(LeftChar3),
   vowel(RightChar1),
  (((LeftChar3 = a; LeftChar3 = ý), (RightChar1 = a; RightChar1 = ý));
   ((LeftChar3 = o; LeftChar3 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar3 = e; LeftChar3 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar3 = ö; LeftChar3 = ü), (RightChar1 = e; RightChar1 = ü))
   ).

vowel_vowel_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   vowel(LeftChar2),
   vowel(RightChar1),
  (((LeftChar2 = a; LeftChar2 = ý), (RightChar1 = a; RightChar1 = ý));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar2 = ö; LeftChar2 = ü), (RightChar1 = e; RightChar1 = ü))
   ).
   
consonant_consonant_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   ((not(consonant(LeftChar1)),!); not(consonant(RightChar1))).

consonant_consonant_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   consonant(LeftChar1),
   vowel(LeftChar2),
   consonant(RightChar1),
   vowel(RightChar2),
   (((LeftChar2 = o, LeftChar1 = r), (RightChar1 = s, RightChar2 = a));
    ((LeftChar2 = o, LeftChar1 = r), (RightChar1 = s, RightChar2 = u))
   ).

consonant_consonant_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   consonant(LeftChar1),
   consonant(RightChar1),
   vowel(RightChar2),
   (((LeftChar1 = l), (RightChar1 = s, RightChar2 = a));
    ((LeftChar1 = l), (RightChar1 = s, RightChar2 = e))
   ).
   
consonant_consonant_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   consonant(RightChar1),
  ((consonant_type1(LeftChar1), consonant_type1(RightChar1));
   (consonant_type1(LeftChar1), consonant_type2(RightChar1));
   (consonant_type2(LeftChar1), consonant_type3(RightChar1));
   (consonant_type2(LeftChar1), consonant_type2(RightChar1));
   (consonant_type3(LeftChar1), consonant_type2(RightChar1));
   (consonant_type3(LeftChar1), consonant_type3(RightChar1))
   ).
   
consonant_consonant_harmony(LeftCodes, [RightCode1, RightCode2|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2, LeftCode3|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(LeftChar3, LeftCode3),
   char_code(RightChar1, RightCode1),
   char_code(RightChar2, RightCode2),
   consonant(LeftChar1),
   consonant(LeftChar2),
   vowel(LeftChar3),
   consonant(RightChar1),
   vowel(RightChar2),
   ((süreksiz_type(LeftChar1), sürekli_type(LeftChar2),
     (RightChar1 = t; RightChar1 = l))
   ).

vowel_consonant_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   ((not(vowel(LeftChar1)),!); not(consonant(RightChar1))).

vowel_consonant_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   vowel(LeftChar1),
   consonant(RightChar1),
   not(RightChar1 = t).

consonant_vowel_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(RightChar1, RightCode1),
   ((not(consonant(LeftChar1)),!); not(vowel(RightChar1))).

consonant_vowel_harmony(LeftCodes, [RightCode1|_]):-
  reverse(LeftCodes, [LeftCode1|_]),
  char_code(LeftChar1, LeftCode1),
  char_code(RightChar1, RightCode1),
  consonant(LeftChar1),
  vowel(RightChar1),
  not(LeftChar1 = p),
  not(LeftChar1 = ç),
  not(LeftChar1 = t),
  not(LeftChar1 = k).

consonant_vowel_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   consonant(LeftChar2),
   vowel(RightChar1),
   (süreksiz_type(LeftChar1), sürekli_type(LeftChar2), vowel(RightChar1)
   ).
   
vowel(a).
vowel(ý).
vowel(o).
vowel(u).
vowel(e).
vowel(i).
vowel(ö).
vowel(ü).
   
consonant(b).
consonant(c).
consonant(ç).
consonant(d).
consonant(f).
consonant(g).
consonant(ð).
consonant(h).
consonant(j).
consonant(k).
consonant(l).
consonant(m).
consonant(n).
consonant(p).
consonant(r).
consonant(s).
consonant(þ).
consonant(t).
consonant(v).
consonant(y).
consonant(z).

consonant_type1(ç).
consonant_type1(f).
consonant_type1(h).
consonant_type1(k).
consonant_type1(p).
consonant_type1(s).
consonant_type1(þ).
consonant_type1(t).

consonant_type2(l).
consonant_type2(m).
consonant_type2(n).
consonant_type2(r).
consonant_type2(y).

consonant_type3(b).
consonant_type3(c).
consonant_type3(d).
consonant_type3(g).
consonant_type3(ð).
consonant_type3(j).
consonant_type3(v).
consonant_type3(z).

süreksiz_type(b).
süreksiz_type(c).
süreksiz_type(ç).
süreksiz_type(d).
süreksiz_type(g).
süreksiz_type(k).
süreksiz_type(p).
süreksiz_type(t).

sürekli_type(f).
sürekli_type(ð).
sürekli_type(h).
sürekli_type(j).
sürekli_type(l).
sürekli_type(m).
sürekli_type(n).
sürekli_type(r).
sürekli_type(s).
sürekli_type(þ).
sürekli_type(v).
sürekli_type(y).
sürekli_type(z).
