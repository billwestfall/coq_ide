Coq < Reset Initial.

Coq < Section predicate_calculus.

Coq < Variable D : Set.
D is assumed

Coq < Variable R : D -> D -> Prop.
R is assumed

Coq < Section R_sym_trans.

Coq < Hypothesis R_symmetric : forall x y:D, R x y -> R y x.
R_symmetric is assumed

Coq < Hypothesis R_transitive : forall x y z:D, R x y -> R y z -> R x z.
R_transitive is assumed

Coq < Lemma refl_if : forall x:D, (exists y, R x y) -> R x x.
1 subgoal
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  ============================
   forall x : D, (exists y : D, R x y) -> R x x

refl_if < Check ex.
ex
     : forall A : Type, (A -> Prop) -> Prop

refl_if < intros x x_Rlinked.
1 subgoal
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  x : D
  x_Rlinked : exists y : D, R x y
  ============================
   R x x

refl_if < elim x_Rlinked.
1 subgoal
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  x : D
  x_Rlinked : exists y : D, R x y
  ============================
   forall x0 : D, R x x0 -> R x x

refl_if < intros y Rxy.
1 subgoal
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  x : D
  x_Rlinked : exists y : D, R x y
  y : D
  Rxy : R x y
  ============================
   R x x

refl_if < apply R_transitive with y.
2 subgoals
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  x : D
  x_Rlinked : exists y : D, R x y
  y : D
  Rxy : R x y
  ============================
   R x y

subgoal 2 is:
 R y x

refl_if < assumption.
1 subgoal
  
  D : Set
  R : D -> D -> Prop
  R_symmetric : forall x y : D, R x y -> R y x
  R_transitive : forall x y z : D, R x y -> R y z -> R x z
  x : D
  x_Rlinked : exists y : D, R x y
  y : D
  Rxy : R x y
  ============================
   R y x

refl_if < apply R_symmetric; assumption.
No more subgoals.

refl_if < Qed.
intros x x_Rlinked.
elim x_Rlinked.
intros y Rxy.
apply R_transitive with y.
 assumption.

 apply R_symmetric; assumption.

refl_if is defined

Coq < End R_sym_trans.

Coq < 
