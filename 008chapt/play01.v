(** MacBook-Air:08chapt billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqc -verbose play01.v 
Module Playground1.
Inductive nat : Type :=
  | O : nat
  | S : nat -> nat.
Definition pred (n : nat) : nat :=
  match n with
    | O => O
    | S n' => n'
  end.
End Playground1.
Definition minustwo (n : nat) : nat :=
  match n with
    | O => O
    | S O => O
    | S (S n') => n'
  end.
Check (S (S (S (S O)))).
4
     : nat
Eval compute in (minustwo 4).
     = 2
     : nat
Check S.
S
     : nat -> nat
Check pred.
pred
     : nat -> nat
Check minustwo.
minustwo
     : nat -> nat
Fixpoint evenb (n:nat) : bool :=
  match n with
  | O        => true
  | S O      => false
  | S (S n') => evenb n'
  end.
Definition oddb (n:nat) : bool   :=   negb (evenb n).
Example test_oddb1:    (oddb (S O)) = true.
Proof.
reflexivity.
Qed.
Example test_oddb2:    (oddb (S (S (S (S O))))) = false.
Proof.
reflexivity.
Qed.
MacBook-Air:08chapt billw$
*)

Module Playground1.

Inductive nat : Type :=
  | O : nat
  | S : nat -> nat.

Definition pred (n : nat) : nat :=
  match n with
    | O => O
    | S n' => n'
  end.

End Playground1.

Definition minustwo (n : nat) : nat :=
  match n with
    | O => O
    | S O => O
    | S (S n') => n'
  end.

Check (S (S (S (S O)))).
Eval compute in (minustwo 4).

Check S.
Check pred.
Check minustwo.

Fixpoint evenb (n:nat) : bool :=
  match n with
  | O        => true
  | S O      => false
  | S (S n') => evenb n'
  end.

Definition oddb (n:nat) : bool   :=   negb (evenb n).

Example test_oddb1:    (oddb (S O)) = true.
Proof. reflexivity.  Qed.
Example test_oddb2:    (oddb (S (S (S (S O))))) = false.
Proof. reflexivity.  Qed.
