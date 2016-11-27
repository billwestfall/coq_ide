(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q R S : Prop.
P is assumed
Q is assumed
R is assumed
S is assumed

Coq < Goal ((P -> (Q /\ R)) /\ (R -> S)) -> (P -> S).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  ============================
   (P -> Q /\ R) /\ (R -> S) -> P -> S

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P -> Q /\ R) /\ (R -> S)
  H0 : P
  ============================
   S

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P -> Q /\ R) /\ (R -> S)
  H0 : P
  ============================
   (P -> Q /\ R) -> (R -> S) -> S

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P -> Q /\ R) /\ (R -> S)
  H0 : P
  H1 : P -> Q /\ R
  ============================
   (R -> S) -> S

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P -> Q /\ R) /\ (R -> S)
  H0 : P
  H1 : P -> Q /\ R
  H2 : R -> S
  ============================
   S

Unnamed_thm < auto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P -> Q /\ R) /\ (R -> S)
  H0 : P
  H1 : P -> Q /\ R
  H2 : R -> S
  ============================
   S

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
auto.
tauto.

Unnamed_thm is defined

Coq < 
