Coq < Lemma and_commutative : A /\ B -> B /\ A.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  ============================
   A /\ B -> B /\ A

and_commutative < intro.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A /\ B
  ============================
   B /\ A

and_commutative < elim H.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A /\ B
  ============================
   A -> B -> B /\ A

and_commutative < split.
2 subgoals

  A : Prop
  B : Prop
  C : Prop
  H : A /\ B
  H0 : A
  H1 : B
  ============================
   B

subgoal 2 is:
 A

and_commutative < Restart.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  ============================
   A /\ B -> B /\ A

and_commutative < intro H; elim H; auto.
No more subgoals.

and_commutative < Qed.
intro H; elim H; auto.

and_commutative is defined
