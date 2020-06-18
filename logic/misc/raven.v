Coq < Require Import Classical.

Coq <  Theorem exp097 : (forall R B : Prop, (R -> B) -> (~B -> ~R)).
1 subgoal

  ============================
  forall R B : Prop, (R -> B) -> ~ B -> ~ R

exp097 < intros.
1 subgoal

  R, B : Prop
  H : R -> B
  H0 : ~ B
  ============================
  ~ R

exp097 < unfold not.
1 subgoal

  R, B : Prop
  H : R -> B
  H0 : ~ B
  ============================
  R -> False

exp097 < intro.
1 subgoal

  R, B : Prop
  H : R -> B
  H0 : ~ B
  H1 : R
  ============================
  False

exp097 < simple apply H0.
1 subgoal

  R, B : Prop
  H : R -> B
  H0 : ~ B
  H1 : R
  ============================
  B

exp097 < simple apply H.
1 subgoal

  R, B : Prop
  H : R -> B
  H0 : ~ B
  H1 : R
  ============================
  R

exp097 < assumption.
No more subgoals.

exp097 < Qed.
(intros **).
(unfold not).
intro.
(simple apply H0).
(simple apply H).
assumption.

Qed.
exp097 is defined
