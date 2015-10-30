Coq < Variable U : Type.
U is assumed
Warning: U is declared as a parameter because it is at a global level

Coq < Definition set := U -> Prop.
set is defined

Coq < Definition element (x:U) (S:set) := S x.
element is defined

Coq < Definition subset (A B:set) := forall x:U, element x A -> element x B.
subset is defined

Coq < Definition transitive (T:Type) (R:T -> T -> Prop) :=
Coq < forall x y z:T, R x y -> R y z -> R x z.
transitive is defined

Coq < Lemma subset_transitive : transitive set subset.
1 subgoal
  
  ============================
   transitive set subset

subset_transitive < unfold transitive.
1 subgoal
  
  ============================
   forall x y z : set, subset x y -> subset y z -> subset x z

subset_transitive < unfold subset.
1 subgoal
  
  ============================
   forall x y z : set,
   (forall x0 : U, element x0 x -> element x0 y) ->
   (forall x0 : U, element x0 y -> element x0 z) ->
   forall x0 : U, element x0 x -> element x0 z

subset_transitive < auto.
No more subgoals.

subset_transitive < 
