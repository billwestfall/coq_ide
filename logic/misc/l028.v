Theorem neg: forall (b d : Prop), ~b -> ((b \/ d) -> d).
Proof.
  intros.
  tauto.
Qed.
