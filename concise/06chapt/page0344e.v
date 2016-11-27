(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables W X Y Z : Prop.
W is assumed
X is assumed
Y is assumed
Z is assumed

Coq < Goal ((W -> (X -> Y)) /\ (X -> (Y -> Z))) -> (W -> (X -> Z)).
1 subgoal
  
  W : Prop
  X : Prop
  Y : Prop
  Z : Prop
  ============================
   (W -> X -> Y) /\ (X -> Y -> Z) -> W -> X -> Z

Unnamed_thm < intros.
1 subgoal
  
  W : Prop
  X : Prop
  Y : Prop
  Z : Prop
  H : (W -> X -> Y) /\ (X -> Y -> Z)
  H0 : W
  H1 : X
  ============================
   Z

Unnamed_thm < elim H.
1 subgoal
  
  W : Prop
  X : Prop
  Y : Prop
  Z : Prop
  H : (W -> X -> Y) /\ (X -> Y -> Z)
  H0 : W
  H1 : X
  ============================
   (W -> X -> Y) -> (X -> Y -> Z) -> Z

Unnamed_thm < intro.
1 subgoal
  
  W : Prop
  X : Prop
  Y : Prop
  Z : Prop
  H : (W -> X -> Y) /\ (X -> Y -> Z)
  H0 : W
  H1 : X
  H2 : W -> X -> Y
  ============================
   (X -> Y -> Z) -> Z

Unnamed_thm < intro.
1 subgoal
  
  W : Prop
  X : Prop
  Y : Prop
  Z : Prop
  H : (W -> X -> Y) /\ (X -> Y -> Z)
  H0 : W
  H1 : X
  H2 : W -> X -> Y
  H3 : X -> Y -> Z
  ============================
   Z

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
