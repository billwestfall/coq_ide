(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables A B C D E : Prop.
A is assumed
B is assumed
C is assumed
D is assumed
E is assumed

Coq < Goal ((A -> (B \/ C)) /\ (C -> (D /\ E)) /\ ~B) -> (A -> ~E).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  ============================
   (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B -> A -> ~ E

Unnamed_thm < intros.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  H : (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B
  H0 : A
  ============================
   ~ E

Unnamed_thm < elim H.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  H : (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B
  H0 : A
  ============================
   (A -> B \/ C) -> (C -> D /\ E) /\ ~ B -> ~ E

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  H : (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B
  H0 : A
  H1 : A -> B \/ C
  ============================
   (C -> D /\ E) /\ ~ B -> ~ E

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  H : (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B
  H0 : A
  H1 : A -> B \/ C
  H2 : (C -> D /\ E) /\ ~ B
  ============================
   ~ E

Unnamed_thm < destruct H2.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  H : (A -> B \/ C) /\ (C -> D /\ E) /\ ~ B
  H0 : A
  H1 : A -> B \/ C
  H2 : C -> D /\ E
  H3 : ~ B
  ============================
   ~ E

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < 
