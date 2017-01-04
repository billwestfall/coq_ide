Coq < Section Easy004.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables A B C: Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal (B \/ (A /\ ~C)) /\ ((C -> A) <-> B) /\ (~B \/ A) -> ~(A \/ C).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   (B \/ A /\ ~ C) /\ (C -> A <-> B) /\ (~ B \/ A) -> ~ (A \/ C)

Unnamed_thm < crush.
3 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : A
  H3 : C -> A
  H4 : B
  ============================
   False

subgoal 2 is:
 False
subgoal 3 is:
 False

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.
