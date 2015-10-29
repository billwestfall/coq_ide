Coq < Variable D : Set.
D is assumed
Warning: D is declared as a parameter because it is at a global level

Coq < Variable P : D -> Prop.
P is assumed
Warning: P is declared as a parameter because it is at a global level

Coq < Variable d : D.
d is assumed
Warning: d is declared as a parameter because it is at a global level

Coq < Lemma weird : (forall x:D, P x) -> exists a, P a.
1 subgoal
  
  ============================
   (forall x : D, P x) -> exists a : D, P a

weird < intro UnivP.
1 subgoal
  
  UnivP : forall x : D, P x
  ============================
   exists a : D, P a

weird < exists d; trivial.
No more subgoals.

weird < Qed.
intro UnivP.
exists d; trivial.

weird is defined
