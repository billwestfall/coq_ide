Coq < Section Easy016.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables J T Y: Prop.
J is assumed
T is assumed
Y is assumed

Coq < Goal ((((J /\ T) /\ Y) \/ (~J -> ~Y)) /\ (J -> T) /\ (T -> Y)) -> (Y <-> T).
1 subgoal
  
  J : Prop
  T : Prop
  Y : Prop
  ============================
   ((J /\ T) /\ Y \/ (~ J -> ~ Y)) /\ (J -> T) /\ (T -> Y) -> (Y <-> T)

Unnamed_thm < crush.
1 subgoal
  
  J : Prop
  T : Prop
  Y : Prop
  H : J -> T
  H2 : T -> Y
  H1 : (J -> False) -> Y -> False
  H0 : Y
  ============================
   T
