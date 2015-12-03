(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Twelve.

Coq < Goal forall a k j e f m p r u:Prop, (((a) \/ (k /\ j)) -> (~e /\ ~f)) /\ (m -> (a /\ (p \/ r)) /\ (m /\ u)) -> (~e /\ a).
1 subgoal
  
  ============================
   forall a k j e f m p r u : Prop,
   (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u) ->
   ~ e /\ a

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H : (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u)
  ============================
   ~ e /\ a

Unnamed_thm < elim H.
1 subgoal
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H : (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u)
  ============================
   (a \/ k /\ j -> ~ e /\ ~ f) ->
   (m -> (a /\ (p \/ r)) /\ m /\ u) -> ~ e /\ a

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H : (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u)
  H0 : a \/ k /\ j -> ~ e /\ ~ f
  ============================
   (m -> (a /\ (p \/ r)) /\ m /\ u) -> ~ e /\ a

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H : (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u)
  H0 : a \/ k /\ j -> ~ e /\ ~ f
  H1 : m -> (a /\ (p \/ r)) /\ m /\ u
  ============================
   ~ e /\ a

Unnamed_thm < apply conj.
2 subgoals
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H : (a \/ k /\ j -> ~ e /\ ~ f) /\ (m -> (a /\ (p \/ r)) /\ m /\ u)
  H0 : a \/ k /\ j -> ~ e /\ ~ f
  H1 : m -> (a /\ (p \/ r)) /\ m /\ u
  ============================
   ~ e

subgoal 2 is:
 a

Unnamed_thm < firstorder.
2 subgoals
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H1 : m -> (a /\ (p \/ r)) /\ m /\ u
  H2 : m -> (a /\ (p \/ r)) /\ m /\ u
  H : a -> ~ e /\ ~ f
  H3 : k -> j -> ~ e /\ ~ f
  H0 : a -> ~ e /\ ~ f
  H4 : k -> j -> ~ e /\ ~ f
  ============================
   ~ e

subgoal 2 is:
 a

Unnamed_thm < apply H.
2 subgoals
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H1 : m -> (a /\ (p \/ r)) /\ m /\ u
  H2 : m -> (a /\ (p \/ r)) /\ m /\ u
  H : a -> ~ e /\ ~ f
  H3 : k -> j -> ~ e /\ ~ f
  H0 : a -> ~ e /\ ~ f
  H4 : k -> j -> ~ e /\ ~ f
  ============================
   a

subgoal 2 is:
 a

Unnamed_thm < apply H1.
2 subgoals
  
  a : Prop
  k : Prop
  j : Prop
  e : Prop
  f : Prop
  m : Prop
  p : Prop
  r : Prop
  u : Prop
  H1 : m -> (a /\ (p \/ r)) /\ m /\ u
  H2 : m -> (a /\ (p \/ r)) /\ m /\ u
  H : a -> ~ e /\ ~ f
  H3 : k -> j -> ~ e /\ ~ f
  H0 : a -> ~ e /\ ~ f
  H4 : k -> j -> ~ e /\ ~ f
  ============================
   m

subgoal 2 is:
 a

Unnamed_thm <
*)

Section Exercise_Twelve.
Goal forall a k j e f m p r u:Prop, (((a) \/ (k /\ j)) -> (~e /\ ~f)) /\ (m -> (a /\ (p \/ r)) /\ (m /\ u)) -> (~e /\ a).
intros.
elim H.
intro.
intro.
apply conj.
 firstorder.
 apply H.
 apply H1.
 Qed.
