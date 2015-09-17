Theorem my_first_proof : (forall p : Prop, p -> p).
Proof.
  intros p.
  intros proof_of_p.
  exact proof_of_p.
Qed.
