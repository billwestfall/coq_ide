precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables I J : Prop.
I is assumed
J is assumed

Coq < Goal ~(I <-> J) -> ~(I -> J).
1 subgoal
  
  I : Prop
  J : Prop
  ============================
   ~ (I <-> J) -> ~ (I -> J)

Unnamed_thm < intros.
1 subgoal
  
  I : Prop
  J : Prop
  H : ~ (I <-> J)
  ============================
   ~ (I -> J)

Unnamed_thm < intro.
1 subgoal
  
  I : Prop
  J : Prop
  H : ~ (I <-> J)
  H0 : I -> J
  ============================
   False

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < 
