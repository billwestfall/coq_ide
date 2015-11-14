(** MacBook-Air:08chapt billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqc -verbose play02.v 
Module Playground2.
Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
    | O => m
    | S n' => S (plus n' m)
  end.
Eval compute in (plus (S (S (S O))) (S (S O))).
     = 5
     : nat
Fixpoint mult (n m : nat) : nat :=
  match n with
    | O => O
    | S n' => plus m (mult n' m)
  end.
Example test_mult1: (mult 3 3) = 9.
Proof.
reflexivity.
Qed.
Fixpoint minus (n m:nat) : nat :=
  match n, m with
  | O   , _    => O
  | S _ , O    => n
  | S n', S m' => minus n' m'
  end.
End Playground2.
MacBook-Air:08chapt billw$
*)
Module Playground2.

Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
    | O => m
    | S n' => S (plus n' m)
  end.

Eval compute in (plus (S (S (S O))) (S (S O))).

Fixpoint mult (n m : nat) : nat :=
  match n with
    | O => O
    | S n' => plus m (mult n' m)
  end.

Example test_mult1: (mult 3 3) = 9.
Proof. reflexivity.  Qed.

Fixpoint minus (n m:nat) : nat :=
  match n, m with
  | O   , _    => O
  | S _ , O    => n
  | S n', S m' => minus n' m'
  end.

End Playground2.
