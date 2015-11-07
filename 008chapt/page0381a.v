MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Theorem disj : forall P Q : Prop, P \/ Q -> Q \/ P.
1 subgoal

  ============================
   forall P Q : Prop, P \/ Q -> Q \/ P

disj < Proof.
1 subgoal

  ============================
   forall P Q : Prop, P \/ Q -> Q \/ P

disj < intros P Q H.
1 subgoal

  P : Prop
  Q : Prop
  H : P \/ Q
  ============================
   Q \/ P

disj < inversion H as [HP | HQ].
2 subgoals

  P : Prop
  Q : Prop
  H : P \/ Q
  HP : P
  ============================
   Q \/ P

subgoal 2 is:
 Q \/ P

disj < Case "left". right. apply HP.
Toplevel input, characters 5-11:
> Case "left".
>      ^^^^^^
Error: No interpretation for string "left".

2 subgoals

  P : Prop
  Q : Prop
  H : P \/ Q
  HP : P
  ============================
   P

subgoal 2 is:
 Q \/ P

1 subgoal

  P : Prop
  Q : Prop
  H : P \/ Q
  HQ : Q
  ============================
   Q \/ P

disj < Case "right". left. apply HQ.
Toplevel input, characters 5-12:
> Case "right".
>      ^^^^^^^
Error: No interpretation for string "right".

1 subgoal

  P : Prop
  Q : Prop
  H : P \/ Q
  HQ : Q
  ============================
   Q

No more subgoals.

disj < Qed.
intros P Q H.
inversion H as [HP| HQ].
 right.
 apply HP.

 left.
 apply HQ.

disj is defined

Coq <
