Goal forall (X : Type) (x y : X),
(forall p : X -> Prop, p x -> p y) -> x = y.

Proof.
  intros X x y A.

  apply (A (fun z => x = z)).
  reflexivity.
Qed.
