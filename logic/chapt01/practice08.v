Coq < Section Should_Fail.

Coq < Require Import Classical.

Coq < Variables A : Prop.
Warning: Keywords Variables/Hypotheses/Parameters expect more than one assumption
A is assumed

Coq < Goal A -> ~A.
1 subgoal
  
  A : Prop
  ============================
   A -> ~ A

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  H : A
  ============================
   ~ A

Unnamed_thm < auto.
1 subgoal
  
  A : Prop
  H : A
  ============================
   ~ A

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < exact H.
Toplevel input, characters 6-7:
> exact H.
>       ^
Error: In environment
A : Prop
H : A
The term "H" has type "A" while it is expected to have type 
"~ A".

Unnamed_thm < apply H.
Toplevel input, characters 6-7:
> apply H.
>       ^
Error: Impossible to unify "A" with "~ A".

Unnamed_thm < elim H.
Toplevel input, characters 0-6:
> elim H.
> ^^^^^^
Error: Not an inductive product.
