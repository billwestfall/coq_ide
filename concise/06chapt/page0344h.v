(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercises.

Coq < Require Import Classical.

Coq < Variables J K L M N : Prop.
J is assumed
K is assumed
L is assumed
M is assumed
N is assumed

Coq < Goal ((J -> (~L -> ~K)) /\ (K -> (~L -> M)) /\ ((L \/ M) -> N)) -> (J -> N).
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  ============================
   (J -> ~ L -> ~ K) /\ (K -> ~ L -> M) /\ (L \/ M -> N) -> J -> N

Unnamed_thm < intros.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H : (J -> ~ L -> ~ K) /\ (K -> ~ L -> M) /\ (L \/ M -> N)
  H0 : J
  ============================
   N

Unnamed_thm < elim H.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H : (J -> ~ L -> ~ K) /\ (K -> ~ L -> M) /\ (L \/ M -> N)
  H0 : J
  ============================
   (J -> ~ L -> ~ K) -> (K -> ~ L -> M) /\ (L \/ M -> N) -> N

Unnamed_thm < intro.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H : (J -> ~ L -> ~ K) /\ (K -> ~ L -> M) /\ (L \/ M -> N)
  H0 : J
  H1 : J -> ~ L -> ~ K
  ============================
   (K -> ~ L -> M) /\ (L \/ M -> N) -> N

Unnamed_thm < intro.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H : (J -> ~ L -> ~ K) /\ (K -> ~ L -> M) /\ (L \/ M -> N)
  H0 : J
  H1 : J -> ~ L -> ~ K
  H2 : (K -> ~ L -> M) /\ (L \/ M -> N)
  ============================
   N

Unnamed_thm < firstorder.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H0 : J
  H2 : K -> ~ L -> M
  H3 : K -> ~ L -> M
  H4 : L -> N
  H6 : M -> N
  H5 : L -> N
  H7 : M -> N
  H : ~ L -> ~ K
  H1 : ~ L -> ~ K
  ============================
   N

Unnamed_thm < auto.
1 subgoal
  
  J : Prop
  K : Prop
  L : Prop
  M : Prop
  N : Prop
  H0 : J
  H2 : K -> ~ L -> M
  H3 : K -> ~ L -> M
  H4 : L -> N
  H6 : M -> N
  H5 : L -> N
  H7 : M -> N
  H : ~ L -> ~ K
  H1 : ~ L -> ~ K
  ============================
   N

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < 
