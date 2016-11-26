(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Concise.

Coq < Variables B C : Prop.
B is assumed
C is assumed

Coq < Require Import Classical.

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

Unnamed_thm < elim H.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  ============================
   (B -> C) -> ~ C -> ~ B

Unnamed_thm < intro.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  H0 : B -> C
  ============================
   ~ C -> ~ B

Unnamed_thm < intro.
1 subgoal
  
  B : Prop
  C : Prop
  H : (B -> C) /\ ~ C
  H0 : B -> C
  H1 : ~ C
  ============================
   ~ B

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq < 
