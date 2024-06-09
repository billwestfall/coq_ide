Theorem neg: forall (e h : Prop), (e <-> h) -> (~e -> ~h).
Proof.
  intros.
  tauto.
Qed.
