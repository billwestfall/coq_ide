(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Chapt03.

Coq < Require Import Classical.

Coq < Variables C D E : Prop.
C is assumed
D is assumed
E is assumed

Coq < Goal (((C -> D) -> (D -> E)) /\ D) -> (C -> E).
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  ============================
   ((C -> D) -> D -> E) /\ D -> C -> E

Unnamed_thm < intros.
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  H : ((C -> D) -> D -> E) /\ D
  H0 : C
  ============================
   E

Unnamed_thm < elim H.
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  H : ((C -> D) -> D -> E) /\ D
  H0 : C
  ============================
   ((C -> D) -> D -> E) -> D -> E

Unnamed_thm < intro.
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  H : ((C -> D) -> D -> E) /\ D
  H0 : C
  H1 : (C -> D) -> D -> E
  ============================
   D -> E

Unnamed_thm < intro.
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  H : ((C -> D) -> D -> E) /\ D
  H0 : C
  H1 : (C -> D) -> D -> E
  H2 : D
  ============================
   E

Unnamed_thm < destruct H.
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  H : (C -> D) -> D -> E
  H3 : D
  H0 : C
  H1 : (C -> D) -> D -> E
  H2 : D
  ============================
   E

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H.
auto.

Unnamed_thm is defined

Coq < 
