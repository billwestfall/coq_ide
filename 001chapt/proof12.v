subset_transitive < Undo 2.
1 subgoal
  
  ============================
   forall x y z : set, subset x y -> subset y z -> subset x z

subset_transitive < unfold subset at 2.
1 subgoal
  
  ============================
   forall x y z : set,
   subset x y -> (forall x0 : U, element x0 y -> element x0 z) -> subset x z

subset_transitive < intros.
1 subgoal
  
  x : set
  y : set
  z : set
  H : subset x y
  H0 : forall x0 : U, element x0 y -> element x0 z
  ============================
   subset x z

subset_transitive < unfold subset in H.
1 subgoal
  
  x : set
  y : set
  z : set
  H : forall x0 : U, element x0 x -> element x0 y
  H0 : forall x0 : U, element x0 y -> element x0 z
  ============================
   subset x z

subset_transitive < red.
1 subgoal
  
  x : set
  y : set
  z : set
  H : forall x0 : U, element x0 x -> element x0 y
  H0 : forall x0 : U, element x0 y -> element x0 z
  ============================
   forall x0 : U, element x0 x -> element x0 z

subset_transitive < auto.
No more subgoals.

subset_transitive < Qed.
unfold transitive.
unfold subset at 2.
intros.
unfold subset in H.
red.
auto.

subset_transitive is defined

Coq < 
