(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables E F : Prop.
E is assumed
F is assumed

Coq < Goal ((~E \/ F) /\ ~E) -> ~F.
1 subgoal
  
  E : Prop
  F : Prop
  ============================
   (~ E \/ F) /\ ~ E -> ~ F

Unnamed_thm < intros.
1 subgoal
  
  E : Prop
  F : Prop
  H : (~ E \/ F) /\ ~ E
  ============================
   ~ F

Unnamed_thm < intros.
1 subgoal
  
  E : Prop
  F : Prop
  H : (~ E \/ F) /\ ~ E
  ============================
   ~ F

Unnamed_thm < elim H.
1 subgoal
  
  E : Prop
  F : Prop
  H : (~ E \/ F) /\ ~ E
  ============================
   ~ E \/ F -> ~ E -> ~ F

Unnamed_thm < intro.
1 subgoal
  
  E : Prop
  F : Prop
  H : (~ E \/ F) /\ ~ E
  H0 : ~ E \/ F
  ============================
   ~ E -> ~ F

Unnamed_thm < intro.
1 subgoal
  
  E : Prop
  F : Prop
  H : (~ E \/ F) /\ ~ E
  H0 : ~ E \/ F
  H1 : ~ E
  ============================
   ~ F

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.
