(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables B C : Prop.
B is assumed
C is assumed

Coq < Goal ((B -> C) /\ ~C) -> ~B.
1 subgoal
  
  B : Prop
  C : Prop
  ============================
   (B -> C) /\ ~ C -> ~ B

Unnamed_thm < intros.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  ============================
   ~ B

Unnamed_thm < intro.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  H0 : B
  ============================
   False

Unnamed_thm < elim H.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  H0 : B
  ============================
   (B -> C) -> ~ C -> False

Unnamed_thm < intro.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  H0 : B
  H1 : B -> C
  ============================
   ~ C -> False

Unnamed_thm < destruct H.
1 subgoal
  
  B : Prop
  C : Prop
  H : B -> C
  H2 : ~ C
  H0 : B
  H1 : B -> C
  ============================
   ~ C -> False

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intros.
intro.
elim H.
intro.
destruct H.
auto.

Unnamed_thm is defined

Coq < 
