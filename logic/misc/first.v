Theorem p_implies_p : forall P : Prop,
  P -> P.
Proof.
intros P P_holds.
assumption.
Qed.