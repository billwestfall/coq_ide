Theorem neg: forall (a : Prop), (a <-> ~a) -> ~(a <-> ~a).
Proof.
  intros.
  tauto.
Qed.
