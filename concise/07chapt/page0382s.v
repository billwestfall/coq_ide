(*
Coq < Goal forall j k o p l m g:Prop, (((j -> k) /\ (~o -> ~p)) /\ ((l -> j) /\ (~m -> ~o)) /\ (~k -> (l \/ ~m)) /\ (~k /\ g)) -> (~p).
1 subgoal

  ============================
   forall j k o p l m g : Prop,
   ((j -> k) /\ (~ o -> ~ p)) /\
   ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g ->
   ~ p

Unnamed_thm < intros.
1 subgoal

  j : Prop
  k : Prop
  o : Prop
  p : Prop
  l : Prop
  m : Prop
  g : Prop
  H : ((j -> k) /\ (~ o -> ~ p)) /\
      ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g
  ============================
   ~ p

Unnamed_thm < elim H.
1 subgoal

  j : Prop
  k : Prop
  o : Prop
  p : Prop
  l : Prop
  m : Prop
  g : Prop
  H : ((j -> k) /\ (~ o -> ~ p)) /\
      ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g
  ============================
   (j -> k) /\ (~ o -> ~ p) ->
   ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g -> ~ p

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  o : Prop
  p : Prop
  l : Prop
  m : Prop
  g : Prop
  H : ((j -> k) /\ (~ o -> ~ p)) /\
      ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g
  H0 : (j -> k) /\ (~ o -> ~ p)
  ============================
   ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g -> ~ p

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  o : Prop
  p : Prop
  l : Prop
  m : Prop
  g : Prop
  H : ((j -> k) /\ (~ o -> ~ p)) /\
      ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g
  H0 : (j -> k) /\ (~ o -> ~ p)
  H1 : ((l -> j) /\ (~ m -> ~ o)) /\ (~ k -> l \/ ~ m) /\ ~ k /\ g
  ============================
   ~ p

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

Section Exercise_Eighteen.
Goal forall a d b f c e:Prop, (((~a \/ d) -> (b -> f)) /\ ((b \/ c) -> (a -> e)) /\ (a \/ b) /\ (~a)) -> (e \/ f).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
