:- set_prolog_flag(encoding, utf8).

say(Word):- Goal =.. [Word,X], findall(X, Goal, L), remove_redundancies(L, L1),
             writeln(L1).

vasıta(X):- otobüs(X).
otobüs(X):- altıyüzbeşno(X).
otobüs(X):- altıyüzaltıno(X).
otobüs(X):- altıyüzyedino(X).
otobüs(X):- altıyüzsekizno(X).
altıyüzbeşno(X):- adü(X).
altıyüzbeşno(X):- forumAydın(X).
altıyüzbeşno(X):- zaferMeydanı(X).
altıyüzbeşno(X):- trenGarı(X).
altıyüzbeşno(X):- otogar(X).
altıyüzaltıno(X):- karpuzlu(X).
altıyüzaltıno(X):- koçarlı(X).
altıyüzaltıno(X):- incirliova(X).
altıyüzaltıno(X):- söke(X).
altıyüzaltıno(X):- kuşadası(X).
altıyüzyedino(X):- köşk(X).
altıyüzyedino(X):- germencik(X).
altıyüzyedino(X):- efeler(X).
altıyüzyedino(X):- bozdoğan(X).
altıyüzyedino(X):- çine(X).
altıyüzsekizno(X):- yeniPazar(X).
altıyüzsekizno(X):- nazilli(X).
altıyüzsekizno(X):- sultanHisar(X).
altıyüzsekizno(X):- kuyucak(X).
altıyüzsekizno(X):- karacasu(X).
adü(X):- adüöğrenci(X).
adü(X):- adütam(X).
forumAydın(X):- forumAydınöğrenci(X).
forumAydın(X):- forumAydıntam(X).
zaferMeydanı(X):- zaferMeydanıöğrenci(X).
zaferMeydanı(X):- zaferMeydanıtam(X).
trenGarı(X):- trenGarıöğrenci(X).
trenGarı(X):- trenGarıtam(X).
otogar(X):- trenGarıöğrenci(X).
otogar(X):- trenGarıtam(X).
karpuzlu(X):- karpuzluöğrenci(X).
karpuzlu(X):- karpuzlutam(X).
koçarlı(X):- koçarlıöğrenci(X).
koçarlı(X):- koçarlıtam(X).
incirliova(X):- incirliovaöğrenci(X).
incirliova(X):- incirliovatam(X).
söke(X):- sökeöğrenci(X).
söke(X):- söketam(X).
kuşadası(X):- kuşadasıöğrenci(X).
kuşadası(X):- kuşadasıtam(X).
köşk(X):- köşköğrenci(X).
köşk(X):- köşktam(X).
germencik(X):- germenciköğrenci(X).
germencik(X):- germenciktam(X).
efeler(X):- efeleröğrenci(X).
efeler(X):- efelertam(X).
bozdoğan(X):- bozdoğanöğrenci(X).
bozdoğan(X):- bozdoğantam(X).
çine(X):- çineöğrenci(X).
çine(X):- çinetam(X).
yeniPazar(X):- yeniPazaröğrenci(X).
yeniPazar(X):- yeniPazartam(X).
nazilli(X):- nazilliöğrenci(X).
nazilli(X):- nazillitam(X).
sultanHisar(X):- sultanHisaröğrenci(X).
sultanHisar(X):- sultanHisartam(X).
kuyucak(X):- kuyucaköğrenci(X).
kuyucak(X):- kuyucaktam(X).
karacasu(X):- karacasuöğrenci(X).
karacasu(X):- karacasutam(X).

adüöğrenci((öğrenci, 2.90)).
forumAydınöğrenci((öğrenci, 2.90)).
zaferMeydanıöğrenci((öğrenci, 2.90)).
trenGarıöğrenci((öğrenci, 2.90)).
otogaröğrenci((öğrenci, 2.90)).
adütam((tam, 2.90)).
forumAydıntam((tam, 2.90)).
zaferMeydanıtam((tam, 2.90)).
trenGarıtam((tam, 2.90)).
otogartam((tam, 2.90)).

karpuzluöğrenci((öğrenci, 4.40)).
koçarlıöğrenci((öğrenci, 2.80)).
incirliovaöğrenci((öğrenci, 3.10)).
sökeöğrenci((öğrenci, 3.40)).
kuşadasıöğrenci((öğrenci, 4.40)).
karpuzlutam((tam, 4.80)).
koçarlıtam((tam, 3.20)).
incirliovatam((tam, 3.50)).
söketam((tam, 3.80)).
kuşadasıtam((tam, 4.80)).

köşköğrenci((öğrenci, 3.50)).
germenciköğrenci((öğrenci, 2.60)).
efeleröğrenci((öğrenci, 3.00)).
bozdoğanöğrenci((öğrenci, 3.30)).
çineöğrenci((öğrenci, 3.50)).
köşktam((tam, 3.90)).
germenciktam((tam, 3.00)).
efelertam((tam, 3.40)).
bozdoğantam((tam, 3.70)).
çinetam((tam, 3.90)).

yeniPazaröğrenci((öğrenci, 3.50)).
nazilliöğrenci((öğrenci, 2.80)).
sultanHisaröğrenci((öğrenci, 3.00)).
kuyucaköğrenci((öğrenci, 3.40)).
karacasuöğrenci((öğrenci, 3.50)).
yeniPazartam((tam, 3.90)).
nazillitam((tam, 3.20)).
sultanHisartam((tam, 3.40)).
kuyucaktam((tam, 3.80)).
karacasutam((tam, 3.90)).

remove_redundancies([X], [X]).

remove_redundancies([X|Xs], [X|Ys]):-
     member(X,Xs),
     delete_all(X,Xs,Xs1),
     remove_redundancies(Xs1,Ys).

remove_redundancies([X|Xs], [X|Ys]):-
     not(member(X,Xs)),
     remove_redundancies(Xs,Ys).

delete_all(_, [], []).

delete_all(X, [X|Xs], Ys):-
     delete_all(X,Xs,Ys).

delete_all(X, [Y|Xs], [Y|Ys]):-
     not(X = Y),
     delete_all(X,Xs,Ys).





