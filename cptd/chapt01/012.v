Coq < Section Easy012.

Coq < Require Import Classical.

Coq < Load CptdTactics.
Error: Can't find file CptdTactics.v on loadpath

Coq < Load CpdtTactics.

Coq < Variables I J K L: Prop.
I is assumed
J is assumed
K is assumed
L is assumed

Coq < Goal ((I /\ J) /\ (K /\ L)) -> (I /\ L).
1 subgoal
  
  I : Prop
  J : Prop
  K : Prop
  L : Prop
  ============================
   (I /\ J) /\ K /\ L -> I /\ L

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
