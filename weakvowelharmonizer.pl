initial1(q0).
final1(q5).

t1(q0,L,q0):- consonant(L); vowel(L).
t1(q0,a,q1).
t1(q0,ý,q1).
t1(q0,o,q2).
t1(q0,u,q2).
t1(q0,e,q3).
t1(q0,i,q3).
t1(q0,ö,q4).
t1(q0,ü,q4).
t1(q1,C,q1):- consonant(C).
t1(q2,C,q2):- consonant(C).
t1(q3,C,q3):- consonant(C).
t1(q4,C,q4):- consonant(C).
t1(q1,a,q5).
t1(q1,ý,q5).
t1(q2,a,q5).
t1(q2,u,q5).
t1(q3,e,q5).
t1(q3,i,q5).
t1(q4,e,q5).
t1(q4,ü,q5).
t1(q5,C,q5):- consonant(C).

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

vowel(a).
vowel(ý).
vowel(o).
vowel(u).
vowel(e).
vowel(i).
vowel(ö).
vowel(ü).

weakly_harmonize(String):-
   initial1(State),
   weakly_harmonize(String,State).

weakly_harmonize('',State):- final1(State).

weakly_harmonize(String,CurrentState):-
   concat(Char,Suffix,String),
   t1(CurrentState,Char,NextState),
   weakly_harmonize(Suffix,NextState).
