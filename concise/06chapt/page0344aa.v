(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Example.

Coq < Require Import Classical.

Coq < Variables P Q R : Prop.
P is assumed
Q is assumed
R is assumed

Coq < Goal (P -> Q -> R) <-> ((P /\ Q) -> R).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   P -> Q -> R <-> P /\ Q -> R

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   P -> Q -> R <-> P /\ Q -> R

Unnamed_thm < split.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   (P -> Q -> R) -> P /\ Q -> R

subgoal 2 is:
 (P /\ Q -> R) -> P -> Q -> R

Unnamed_thm < intro.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P -> Q -> R
  ============================
   P /\ Q -> R

subgoal 2 is:
 (P /\ Q -> R) -> P -> Q -> R

Unnamed_thm < tauto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   (P /\ Q -> R) -> P -> Q -> R

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intros.
split.
 intro.
 tauto.
 
 tauto.
 
Unnamed_thm is defined

Coq < 
