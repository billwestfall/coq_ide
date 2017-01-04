Coq < Section Easy008.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables B C D: Prop.
B is assumed
C is assumed
D is assumed

Coq < Goal (B \/ B) /\ ((~B -> (~D \/ C)) /\ ((~D \/ C) \/ (~B \/ C))) -> C.
1 subgoal
  
  B : Prop
  C : Prop
  D : Prop
  ============================
   (B \/ B) /\ (~ B -> ~ D \/ C) /\ ((~ D \/ C) \/ ~ B \/ C) -> C

Unnamed_thm < crush.
2 subgoals
  
  B : Prop
  C : Prop
  D : Prop
  H : (B -> False) -> (D -> False) \/ C
  H1 : B
  H2 : D -> False
  ============================
   C

subgoal 2 is:
 C
