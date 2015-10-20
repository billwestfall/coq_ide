Coq < Lemma or_commutative : A \/ B -> B \/ A.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   A \/ B -> B \/ A

or_commutative < intro H; elim H.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A \/ B
  ============================
   A -> B \/ A

subgoal 2 is:
 B -> B \/ A

or_commutative < intro HA.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A \/ B
  HA : A
  ============================
   B \/ A

subgoal 2 is:
 B -> B \/ A

or_commutative < clear H.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  HA : A
  ============================
   B \/ A

subgoal 2 is:
 B -> B \/ A

or_commutative < right.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  HA : A
  ============================
   A

subgoal 2 is:
 B -> B \/ A

or_commutative < trivial.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A \/ B
  ============================
   B -> B \/ A

or_commutative < auto.
No more subgoals.
