MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal (P -> Q) <-> (~Q -> ~P).
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P -> Q <-> ~ Q -> ~ P

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P -> Q <-> ~ Q -> ~ P

Unnamed_thm < intro.
Toplevel input, characters 0-5:
> intro.
> ^^^^^
Error: No product even after head-reduction.

Unnamed_thm < split.
2 subgoals
  
  P : Prop
  Q : Prop
  ============================
   (P -> Q) -> ~ Q -> ~ P

subgoal 2 is:
 (~ Q -> ~ P) -> P -> Q

Unnamed_thm < intros.
2 subgoals
  
  P : Prop
  Q : Prop
  H : P -> Q
  H0 : ~ Q
  ============================
   ~ P

subgoal 2 is:
 (~ Q -> ~ P) -> P -> Q

Unnamed_thm < auto.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   (~ Q -> ~ P) -> P -> Q

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  H : ~ Q -> ~ P
  H0 : P
  ============================
   Q

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
split.
 intros.
 auto.

 intros.
 tauto.

Unnamed_thm is defined

Coq < 
