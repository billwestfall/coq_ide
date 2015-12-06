(*
Coq < Section Exercise_Sixteen.

Coq < Goal forall f m s t a b g:Prop, (((f /\ m) -> (s \/ t)) /\ ((~s \/ a) -> f) /\ ((~s \/ b) -> m) /\ (~s /\ g)) -> (t).
1 subgoal

  ============================
   forall f m s t a b g : Prop,
   (f /\ m -> s \/ t) /\ (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g -> t

Unnamed_thm < intros.
1 subgoal

  f : Prop
  m : Prop
  s : Prop
  t : Prop
  a : Prop
  b : Prop
  g : Prop
  H : (f /\ m -> s \/ t) /\ (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g
  ============================
   t

Unnamed_thm < elim H.
1 subgoal

  f : Prop
  m : Prop
  s : Prop
  t : Prop
  a : Prop
  b : Prop
  g : Prop
  H : (f /\ m -> s \/ t) /\ (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g
  ============================
   (f /\ m -> s \/ t) -> (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g -> t

Unnamed_thm < intro.
1 subgoal

  f : Prop
  m : Prop
  s : Prop
  t : Prop
  a : Prop
  b : Prop
  g : Prop
  H : (f /\ m -> s \/ t) /\ (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g
  H0 : f /\ m -> s \/ t
  ============================
   (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g -> t

Unnamed_thm < intro.
1 subgoal

  f : Prop
  m : Prop
  s : Prop
  t : Prop
  a : Prop
  b : Prop
  g : Prop
  H : (f /\ m -> s \/ t) /\ (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g
  H0 : f /\ m -> s \/ t
  H1 : (~ s \/ a -> f) /\ (~ s \/ b -> m) /\ ~ s /\ g
  ============================
   t

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_Sixteen.
Goal forall f m s t a b g:Prop, (((f /\ m) -> (s \/ t)) /\ ((~s \/ a) -> f) /\ ((~s \/ b) -> m) /\ (~s /\ g)) -> (t).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
