Coq < Section club.

Coq < Variables Scottish RedSocks WearKilt Married GoOutSunday : Prop.
Scottish is assumed
RedSocks is assumed
WearKilt is assumed
Married is assumed
GoOutSunday is assumed

Coq < Hypothesis rule1 : ~ Scottish -> RedSocks.
rule1 is assumed

Coq < Hypothesis rule2 : WearKilt \/ ~ RedSocks.
rule2 is assumed

Coq < Hypothesis rule3 : GoOutSunday <-> Scottish.
rule3 is assumed

Coq < Hypothesis rule4 : Married -> ~ GoOutSunday.
rule4 is assumed

Coq < Hypothesis rule5 : WearKilt -> Scottish /\ Married.
rule5 is assumed

Coq < Hypothesis rule6 : Scottish -> WearKilt.
rule6 is assumed

Coq < Lemma NoMember : False.
1 subgoal
  
  Scottish : Prop
  RedSocks : Prop
  WearKilt : Prop
  Married : Prop
  GoOutSunday : Prop
  rule1 : ~ Scottish -> RedSocks
  rule2 : WearKilt \/ ~ RedSocks
  rule3 : GoOutSunday <-> Scottish
  rule4 : Married -> ~ GoOutSunday
  rule5 : WearKilt -> Scottish /\ Married
  rule6 : Scottish -> WearKilt
  ============================
   False

NoMember < tauto.
No more subgoals.

NoMember < Qed.
tauto.

NoMember is defined

Coq < End club.

Coq < Check NoMember.
NoMember
     : forall Scottish RedSocks WearKilt Married GoOutSunday : Prop,
       (~ Scottish -> RedSocks) ->
       WearKilt \/ ~ RedSocks ->
       (GoOutSunday <-> Scottish) ->
       (Married -> ~ GoOutSunday) ->
       (WearKilt -> Scottish /\ Married) -> (Scottish -> WearKilt) -> False

Coq < 
