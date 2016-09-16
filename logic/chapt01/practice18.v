Coq < Section Scottish.

Coq < Require Import Classical.

Coq < Variables S R W M G : Prop.
S is assumed
R is assumed
W is assumed
M is assumed
G is assumed

Coq < Hypothesis rule1 : ~S -> R.
rule1 is assumed

Coq < Hypothesis rule2 : W \/ ~R.
rule2 is assumed

Coq < Hypothesis rule3 : M -> ~G.
rule3 is assumed

Coq < Hypothesis rule4 : G <-> S.
rule4 is assumed

Coq < Hypothesis rule5 : W -> S /\ M.
rule5 is assumed

Coq < Hypothesis rule6 : S -> W.
rule6 is assumed

Coq < Lemma NoMember : False.
1 subgoal
  
  S : Prop
  R : Prop
  W : Prop
  M : Prop
  G : Prop
  rule1 : ~ S -> R
  rule2 : W \/ ~ R
  rule3 : M -> ~ G
  rule4 : G <-> S
  rule5 : W -> S /\ M
  rule6 : S -> W
  ============================
   False

NoMember < tauto.
No more subgoals.

NoMember < Qed.
tauto.

NoMember is defined
