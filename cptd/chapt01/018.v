Coq < Section Easy018.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables A B C: Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal ((A /\ (B \/ C)) <-> (A \/ B)) /\ (B -> ~B) -> (C \/ A).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   (A /\ (B \/ C) <-> A \/ B) /\ (B -> ~ B) -> C \/ A

Unnamed_thm < crush.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H1 : B -> B -> False
  H0 : A -> B \/ C -> A \/ B
  H : A -> A /\ (B \/ C)
  H3 : B -> A /\ (B \/ C)
  ============================
   C \/ A
