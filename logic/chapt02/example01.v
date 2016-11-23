(precise)admin@localhost:~/Downloads/coq_ide/logic/chapt02$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Complex_Symbols.

Coq < Variables J S : Prop.
J is assumed
S is assumed

Coq < Goal (~J \/ S) /\ (~S) -> ~J.
1 subgoal
  
  J : Prop
  S : Prop
  ============================
   (~ J \/ S) /\ ~ S -> ~ J

Unnamed_thm < intros.
1 subgoal
  
  J : Prop
  S : Prop
  H : (~ J \/ S) /\ ~ S
  ============================
   ~ J

Unnamed_thm < elim H.
1 subgoal
  
  J : Prop
  S : Prop
  H : (~ J \/ S) /\ ~ S
  ============================
   ~ J \/ S -> ~ S -> ~ J

Unnamed_thm < auto.
1 subgoal
  
  J : Prop
  S : Prop
  H : (~ J \/ S) /\ ~ S
  ============================
   ~ J \/ S -> ~ S -> ~ J

Unnamed_thm < destruct H.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  ============================
   ~ J \/ S -> ~ S -> ~ J

Unnamed_thm < intro.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  ============================
   ~ S -> ~ J

Unnamed_thm < intro.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  ============================
   ~ J

Unnamed_thm < auto.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  ============================
   ~ J

Unnamed_thm < elim H.
2 subgoals
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  ============================
   ~ J -> ~ J

subgoal 2 is:
 S -> ~ J

Unnamed_thm < intro.
2 subgoals
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  H3 : ~ J
  ============================
   ~ J

subgoal 2 is:
 S -> ~ J

Unnamed_thm < exact H3.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  ============================
   S -> ~ J

Unnamed_thm < intro.
1 subgoal
  
  J : Prop
  S : Prop
  H : ~ J \/ S
  H0 : ~ S
  H1 : ~ J \/ S
  H2 : ~ S
  H3 : S
  ============================
   ~ J

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
auto.
destruct H.
intro.
intro.
auto.
elim H.
 intro.
 exact H3.
 
 intro.
 auto.
 
Unnamed_thm is defined

Coq < 
