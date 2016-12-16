MacBook-Air:convert billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Convert.

Coq < Require Import Classical.

Coq < Variables Z A B G : Prop.
Z is assumed
A is assumed
B is assumed
G is assumed

Coq < Goal (Z \/ (A /\ B)) -> G.
1 subgoal
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  ============================
   Z \/ A /\ B -> G

Unnamed_thm < intros.
1 subgoal
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  H : Z \/ A /\ B
  ============================
   G

Unnamed_thm < elim H.
2 subgoals
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  H : Z \/ A /\ B
  ============================
   Z -> G

subgoal 2 is:
 A /\ B -> G

Unnamed_thm < destruct H.
3 subgoals
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  H : Z
  ============================
   Z -> G

subgoal 2 is:
 Z -> G
subgoal 3 is:
 A /\ B -> G

Unnamed_thm < intro.
3 subgoals
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  H : Z
  H0 : Z
  ============================
   G

subgoal 2 is:
 Z -> G
subgoal 3 is:
 A /\ B -> G

Unnamed_thm < auto.
3 subgoals
  
  Z : Prop
  A : Prop
  B : Prop
  G : Prop
  H : Z
  H0 : Z
  ============================
   G

subgoal 2 is:
 Z -> G
subgoal 3 is:
 A /\ B -> G

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.


