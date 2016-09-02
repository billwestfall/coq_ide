Coq < Section Club.

Coq < Require Import Classical.

Coq < Variables A B C D E : Prop.
A is assumed
B is assumed
C is assumed
D is assumed
E is assumed

Coq < Hypothesis rule1 : ~A -> B.
rule1 is assumed

Coq < Hypothesis rule2 : C \/ ~B.
rule2 is assumed

Coq < Hypothesis rule3 : D -> ~E.
rule3 is assumed

Coq < Hypothesis rule4 : E <-> A.
rule4 is assumed

Coq < Hypothesis rule5 : C -> A /\ D.
rule5 is assumed

Coq < Hypothesis rule6 : A -> C.
rule6 is assumed

Coq < Lemma NoMember : False.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  E : Prop
  rule1 : ~ A -> B
  rule2 : C \/ ~ B
  rule3 : D -> ~ E
  rule4 : E <-> A
  rule5 : C -> A /\ D
  rule6 : A -> C
  ============================
   False

NoMember < tauto.
No more subgoals.

NoMember < Qed.
tauto.

NoMember is defined
