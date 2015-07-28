Goal forall X Y : Prop, X -> Y -> X.

Proof.
    exact (fun X Y A B => A).
Qed.

Goal forall X Y Z : Prop, (X-> Y) -> (Y -> Z) -> (X -> Z).

Proof.
  exact (fun X Y Z A B C => B (A C)). Show Proof.
Qed.

Lemma lemS : forall X Y Z : Prop, (X -> Y -> Z) -> (X -> Y) -> X -> Z.

Proof.
    intros X Y Z A B C. apply A. Show Proof.
    - exact C.  Show Proof.
    - apply B, C. Show Proof.
Qed.

Print lemS.
