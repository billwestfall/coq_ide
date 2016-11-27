(precise)admin@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables G H I J : Prop.
G is assumed
H is assumed
I is assumed
J is assumed

Coq < Goal ((G -> H) /\ (H -> I) /\ (~J -> G) /\ ~I) -> J.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  ============================
   (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I -> J

Unnamed_thm < intros.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  ============================
   J

Unnamed_thm < elim H0.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  ============================
   (G -> H) -> (H -> I) /\ (~ J -> G) /\ ~ I -> J

Unnamed_thm < intro.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  H1 : G -> H
  ============================
   (H -> I) /\ (~ J -> G) /\ ~ I -> J

Unnamed_thm < intro.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  H1 : G -> H
  H2 : (H -> I) /\ (~ J -> G) /\ ~ I
  ============================
   J

Unnamed_thm < destruct H2.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  H1 : G -> H
  H2 : H -> I
  H3 : (~ J -> G) /\ ~ I
  ============================
   J

Unnamed_thm < destruct H3.
1 subgoal
  
  G : Prop
  H : Prop
  I : Prop
  J : Prop
  H0 : (G -> H) /\ (H -> I) /\ (~ J -> G) /\ ~ I
  H1 : G -> H
  H2 : H -> I
  H3 : ~ J -> G
  H4 : ~ I
  ============================
   J

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H0.
intro.
intro.
destruct H2.
destruct H3.
tauto.

Unnamed_thm is defined

Coq < 
