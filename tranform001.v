Theorem proof : forall A B , A /\ B -> B /\ A.
intros.
elim H.
split.
Restart. 
intros.
elim H.
auto. Show Proof.
Qed.
