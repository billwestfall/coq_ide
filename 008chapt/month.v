(** MacBook-Air:08chapt billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqc -verbose months.v
Definition admit {T: Type} : T.
Admitted.
Inductive month : Type :=
  | january : month
  | february : month
  | march : month
  | april : month
  | may : month
  | june : month
  | july : month
  | august : month
  | september : month
  | october : month
  | november : month
  | december : month.
Definition next_month (m:month) : month :=
  match m with
  | january    => february
  | february   => march
  | march      => april
  | april       => may
  | may         => june
  | june        => july
  | july        => august
  | august      => september
  | september   => october
  | october     => november
  | november    => december
  | december    => january
  end.
Eval compute in (next_month april).
     = may
     : month
Eval compute in (next_month (next_month may)).
     = july
     : month
Example test_next_month:
  (next_month (next_month may)) = july.
Proof.
simpl.
reflexivity.
Qed.
MacBook-Air:08chapt billw$ *)

Definition admit {T: Type} : T.  Admitted.

Inductive month : Type :=
  | january : month
  | february : month
  | march : month
  | april : month
  | may : month
  | june : month
  | july : month
  | august : month
  | september : month
  | october : month
  | november : month
  | december : month.

Definition next_month (m:month) : month :=
  match m with
  | january    => february
  | february   => march
  | march      => april
  | april       => may
  | may         => june
  | june        => july
  | july        => august
  | august      => september
  | september   => october
  | october     => november
  | november    => december
  | december    => january
  end.

  Eval compute in (next_month april).
     (* ==> may : month *)
  Eval compute in (next_month (next_month may)).
     (* ==> june : month *)

Example test_next_month:
  (next_month (next_month may)) = july.

Proof. simpl. reflexivity.  Qed.
