Goal forall X Y : Prop, (forall Z : Prop, (X -> Y -> Z) -> Z) -> X.

Proof.
  intros X Y A. Show Proof. apply A. Show Proof. intros B C. Show Proof. exact B. Show Proof.
Qed.
