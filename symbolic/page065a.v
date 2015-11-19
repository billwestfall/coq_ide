Section Brave.
Goal forall x y m:Prop, ((m -> x) /\ (m -> y)) -> (x -> y).
intros.
firstorder.
apply H1.




Unnamed_thm < apply H1.
1 subgoal

  x : Prop
  y : Prop
  m : Prop
  H0 : x
  H : m -> x
  H1 : m -> y
  ============================
   m
