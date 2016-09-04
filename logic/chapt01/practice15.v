Coq < Section Defined.

Coq < Variables A B : Prop.
A is assumed
B is assumed

Coq < Goal (A \/ B) -> ~~(A \/ B).
1 subgoal
  
  A : Prop
  B : Prop
  ============================
   A \/ B -> ~ ~ (A \/ B)

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  H : A \/ B
  ============================
   ~ ~ (A \/ B)

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  H : A \/ B
  H0 : ~ (A \/ B)
  ============================
   False

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intro.
intro.
auto.

Unnamed_thm is defined
