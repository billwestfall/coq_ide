Coq < Section Easy014.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables Q R S T: Prop.
Q is assumed
R is assumed
S is assumed
T is assumed

Coq < Goal ((Q -> R) /\ (S -> T) /\ (R -> S)) -> (Q /\ T).
1 subgoal
  
  Q : Prop
  R : Prop
  S : Prop
  T : Prop
  ============================
   (Q -> R) /\ (S -> T) /\ (R -> S) -> Q /\ T

Unnamed_thm < crush.
2 subgoals
  
  Q : Prop
  R : Prop
  S : Prop
  T : Prop
  H0 : Q -> R
  H : S -> T
  H2 : R -> S
  ============================
   Q

subgoal 2 is:
 T
