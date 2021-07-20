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
t(qv3a,pDefInd�c,qv5).
t(qv3b,pInd�c,qv5).
t(qv3b,aDefPast,qv4a).
t(qv3b,aInDefPast,qv4b).
t(qv3b,aCon,qv4a).
t(qv3c,aDefPast,qv4a).
t(qv3c,aInDefPast,qv4b).
t(qv3c,pDefInd�c,qv5).
t(qv3d,aDefPast,qv4a).
t(qv3d,aInDefPast,qv4b).
t(qv3d,pInd�c,qv5).
t(qv4a,pDefInd�c,qv5).
t(qv4b,pInd�c,qv5).

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
allomorph(b�rak,verb).

% olumsuzluk ekleri
allomorph(ma,neg).
allomorph(me,neg).
allomorph(m�,neg).
allomorph(mi,neg).
allomorph(mu,neg).
allomorph(m�,neg).

% g�r�len ge�mi� zaman
allomorph(d�,tDefPast).
allomorph(di,tDefPast).
allomorph(t�,tDefPast).
allomorph(ti,tDefPast).
allomorph(du,tDefPast).
allomorph(d�,tDefPast).
allomorph(tu,tDefPast).
allomorph(t�,tDefPast).

% duyulan ge�mi� zaman
allomorph(m��,tInDefPast).
allomorph(mi�,tInDefPast).
allomorph(mu�,tInDefPast).
allomorph(m��,tInDefPast).

% �imdiki zaman
allomorph(yor,tProg).
allomorph(�yor,tProg).
allomorph(iyor,tProg).
allomorph(uyor,tProg).
allomorph(�yor,tProg).

% gelecek zaman
allomorph(ecek,tFut).
allomorph(acak,tFut).
allomorph(yecek,tFut).
allomorph(yacak,tFut).

% geni� zaman
allomorph(r,tAor).
allomorph(�r,tAor).
allomorph(ir,tAor).
allomorph(ur,tAor).
allomorph(�r,tAor).
allomorph(ar,tAor).
allomorph(er,tAor).

% gereklilik kipi
allomorph(meli,tNec).
allomorph(mal�,tNec).
allomorph(mal�y,tNec).
allomorph(meliy,tNec).

% �art kipi
allomorph(se,tCon).
allomorph(sa,tCon).
allomorph(say,tCon).
allomorph(sey,tCon).

% istek kipi
allomorph(e,tOpt).
allomorph(a,tOpt).
allomorph(ya,tOpt).
allomorph(ye,tOpt).

% ek fiilin �art birle�ik zaman kipi
allomorph(se,aCon).
allomorph(sa,aCon).

% ek fiilin hikaye birle�ik zaman kipi
allomorph(d�,aDefPast).
allomorph(di,aDefPast).
allomorph(t�,aDefPast).
allomorph(ti,aDefPast).
allomorph(du,aDefPast).
allomorph(d�,aDefPast).
allomorph(tu,aDefPast).
allomorph(t�,aDefPast).
allomorph(yd�,aDefPast).
allomorph(ydi,aDefPast).
allomorph(yd�,aDefPast).
allomorph(ydu,aDefPast).

% ek fiilin rivayet birle�ik zaman kipi
allomorph(m��,aInDefPast).
allomorph(mi�,aInDefPast).
allomorph(mu�,aInDefPast).
allomorph(m��,aInDefPast).

% �ah�s ekleri
% birinci tekil
allomorph(m,pInd�c).
allomorph(�m,pInd�c).
allomorph(im,pInd�c).
allomorph(um,pInd�c).
allomorph(�m,pInd�c).
allomorph(y�m,pInd�c).
allomorph(yim,pInd�c).
allomorph(yum,pInd�c).
allomorph(y�m,pInd�c).

% ikinci tekil
allomorph(n,pInd�c).
allomorph(�n,pInd�c).
allomorph(in,pInd�c).
allomorph(un,pInd�c).
allomorph(�n,pInd�c).
allomorph(s�n,pInd�c).
allomorph(sin,pInd�c).
allomorph(sun,pInd�c).
allomorph(s�n,pInd�c).

% birinci �o�ul
allomorph(�z,pInd�c).
allomorph(iz,pInd�c).
allomorph(uz,pInd�c).
allomorph(�z,pInd�c).
allomorph(�k,pInd�c).
allomorph(ik,pInd�c).
allomorph(y�z,pInd�c).
allomorph(yiz,pInd�c).
allomorph(yuz,pInd�c).
allomorph(y�z,pInd�c).

% ikinci �o�ul
allomorph(s�n�z,pInd�c).
allomorph(siniz,pInd�c).
allomorph(sunuz,pInd�c).
allomorph(s�n�z,pInd�c).
allomorph(�n�z,pInd�c).
allomorph(iniz,pInd�c).
allomorph(unuz,pInd�c).
allomorph(�n�z,pInd�c).

% ���nc� �o�ul
allomorph(ler,pInd�c).
allomorph(lar,pInd�c).

% ek fiilden sonra gelen �ah�s kipleri
allomorph(m,pDefInd�c).
allomorph(n,pDefInd�c).
allomorph(k,pDefInd�c).
allomorph(n�z,pDefInd�c).
allomorph(niz,pDefInd�c).
allomorph(nuz,pDefInd�c).
allomorph(n�z,pDefInd�c).
allomorph(ler,pDefInd�c).
allomorph(lar,pDefInd�c).

% isimler
allomorph(kitap,noun).
allomorph(kitab,noun).
allomorph(top,noun).
allomorph(tob,noun).
allomorph(tav�an,noun).
allomorph(park,noun).
allomorph(okul,noun).
allomorph(durak,noun).
allomorph(dura�,noun).
allomorph(fiyat,noun).
allomorph(fiyatland�rma,noun).
allomorph(forum,noun).
allomorph(zafer,noun).
allomorph(tren,noun).
allomorph(otogar,noun).
allomorph(ko�arl�,noun).
allomorph(incirliova,noun).
allomorph(s�ke,noun).
allomorph(ku�adas�,noun).
allomorph(germencik,noun).
allomorph(efeler,noun).
allomorph(bozdo�an,noun).
allomorph(�ine,noun).
allomorph(nazilli,noun).
allomorph(kuyucak,noun).
allomorph(karacasu,noun).
allomorph(k��k,noun).
allomorph(hangi,noun).
allomorph(birinci,noun).
allomorph(ikinci,noun).
allomorph(���nc�,noun).
allomorph(d�rd�nc�,noun).
allomorph(be�inci,noun).
allomorph(alt�nc�,noun).
allomorph(yedinci,noun).
allomorph(tam,noun).
allomorph(��renci,noun).
allomorph(son,noun).
allomorph(sefer,noun).
allomorph(engelli,noun).
allomorph(�cret,noun).
allomorph(kalk��,noun).

% �okluk eki
allomorph(ler,plur).
allomorph(lar,plur).

% iyelik eki
allomorph(i,poss).
allomorph(im,poss).
allomorph(imiz,poss).
allomorph(in,poss).
allomorph(iniz,poss).
allomorph(�,poss).
allomorph(�m,poss).
allomorph(�n,poss).
allomorph(�m�z,poss).
allomorph(�n�z,poss).
allomorph(u,poss).
allomorph(um,poss).
allomorph(un,poss).
allomorph(umuz,poss).
allomorph(unuz,poss).
allomorph(�,poss).
allomorph(�m,poss).
allomorph(�n,poss).
allomorph(�m�z,poss).
allomorph(�n�z,poss).

% belirtme hali eki
allomorph(i,acc).
allomorph(�,acc).
allomorph(ni,acc).
allomorph(n�,acc).
allomorph(u,acc).
allomorph(�,acc).
allomorph(nu,acc).
allomorph(n�,acc).

% ayr�lma hali eki
allomorph(den,abl).
allomorph(dan,abl).
allomorph(ten,abl).
allomorph(tan,abl).
allomorph(nden,abl).
allomorph(ndan,abl).

% y�nelme hali eki
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
allomorph(�n,gen).
allomorph(un,gen).
allomorph(�n,gen).
allomorph(nin,gen).
allomorph(n�n,gen).
allomorph(nun,gen).
allomorph(n�n,gen).

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
   (LeftChar1 = �; LeftChar1 = i; LeftChar1 = u; LeftChar1 = �).
   
vowel_vowel_progressiveHarmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   vowel(LeftChar2),
   vowel(RightChar1),
   (((LeftChar2 = a; LeftChar2 = �), (RightChar1 = a; RightChar1 = �));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar2 = �; LeftChar2 = �), (RightChar1 = e; RightChar1 = �))
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
  (((LeftChar1 = a; LeftChar1 = �), (RightChar2 = a; RightChar2 = �));
   ((LeftChar1 = o; LeftChar1 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar1 = e; LeftChar1 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar1 = �; LeftChar1 = �), (RightChar2 = e; RightChar2 = �))
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
  (((LeftChar2 = a; LeftChar2 = �), (RightChar2 = a; RightChar2 = �));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar2 = �; LeftChar2 = �), (RightChar2 = e; RightChar2 = �))
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
  (((LeftChar3 = a; LeftChar3 = �), (RightChar2 = a; RightChar2 = �));
   ((LeftChar3 = o; LeftChar3 = u), (RightChar2 = a; RightChar2 = u));
   ((LeftChar3 = e; LeftChar3 = i), (RightChar2 = e; RightChar2 = i));
   ((LeftChar3 = �; LeftChar3 = �), (RightChar2 = e; RightChar2 = �))
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
  (((LeftChar3 = a; LeftChar3 = �), (RightChar1 = a; RightChar1 = �));
   ((LeftChar3 = o; LeftChar3 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar3 = e; LeftChar3 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar3 = �; LeftChar3 = �), (RightChar1 = e; RightChar1 = �))
   ).

vowel_vowel_harmony(LeftCodes, [RightCode1|_]):-
   reverse(LeftCodes, [LeftCode1, LeftCode2|_]),
   char_code(LeftChar1, LeftCode1),
   char_code(LeftChar2, LeftCode2),
   char_code(RightChar1, RightCode1),
   consonant(LeftChar1),
   vowel(LeftChar2),
   vowel(RightChar1),
  (((LeftChar2 = a; LeftChar2 = �), (RightChar1 = a; RightChar1 = �));
   ((LeftChar2 = o; LeftChar2 = u), (RightChar1 = a; RightChar1 = u));
   ((LeftChar2 = e; LeftChar2 = i), (RightChar1 = e; RightChar1 = i));
   ((LeftChar2 = �; LeftChar2 = �), (RightChar1 = e; RightChar1 = �))
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
   ((s�reksiz_type(LeftChar1), s�rekli_type(LeftChar2),
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
  not(LeftChar1 = �),
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
   (s�reksiz_type(LeftChar1), s�rekli_type(LeftChar2), vowel(RightChar1)
   ).
   
vowel(a).
vowel(�).
vowel(o).
vowel(u).
vowel(e).
vowel(i).
vowel(�).
vowel(�).
   
consonant(b).
consonant(c).
consonant(�).
consonant(d).
consonant(f).
consonant(g).
consonant(�).
consonant(h).
consonant(j).
consonant(k).
consonant(l).
consonant(m).
consonant(n).
consonant(p).
consonant(r).
consonant(s).
consonant(�).
consonant(t).
consonant(v).
consonant(y).
consonant(z).

consonant_type1(�).
consonant_type1(f).
consonant_type1(h).
consonant_type1(k).
consonant_type1(p).
consonant_type1(s).
consonant_type1(�).
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
consonant_type3(�).
consonant_type3(j).
consonant_type3(v).
consonant_type3(z).

s�reksiz_type(b).
s�reksiz_type(c).
s�reksiz_type(�).
s�reksiz_type(d).
s�reksiz_type(g).
s�reksiz_type(k).
s�reksiz_type(p).
s�reksiz_type(t).

s�rekli_type(f).
s�rekli_type(�).
s�rekli_type(h).
s�rekli_type(j).
s�rekli_type(l).
s�rekli_type(m).
s�rekli_type(n).
s�rekli_type(r).
s�rekli_type(s).
s�rekli_type(�).
s�rekli_type(v).
s�rekli_type(y).
s�rekli_type(z).
