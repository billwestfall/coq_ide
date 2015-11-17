(* MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Modus_ponens.

Coq < Theorem MP: forall P Q: Prop, P /\ (P -> Q) -> Q.
1 subgoal

  ============================
   forall P Q : Prop, P /\ (P -> Q) -> Q

MP < intro P.
1 subgoal

  P : Prop
  ============================
   forall Q : Prop, P /\ (P -> Q) -> Q

MP < intro Q.
1 subgoal

  P : Prop
  Q : Prop
  ============================
   P /\ (P -> Q) -> Q

MP < intro HPPQ.
1 subgoal

  P : Prop
  Q : Prop
  HPPQ : P /\ (P -> Q)
  ============================
   Q

MP < destruct HPPQ as [HP HPQ].
1 subgoal

  P : Prop
  Q : Prop
  HP : P
  HPQ : P -> Q
  ============================
   Q

MP < apply HPQ.
1 subgoal

  P : Prop
  Q : Prop
  HP : P
  HPQ : P -> Q
  ============================
   P

MP < exact HP.
No more subgoals.

MP < Qed.
intro P.
intro Q.
intro HPPQ.
destruct HPPQ as (HP, HPQ).
apply HPQ.
exact HP.

MP is defined

Coq <
*)

Section Modus_ponens.
Theorem MP: forall P Q: Prop, P /\ (P -> Q) -> Q.
intro P.
intro Q.
intro HPPQ.
destruct HPPQ as [HP HPQ].
apply HPQ.
exact HP.
Qed.
