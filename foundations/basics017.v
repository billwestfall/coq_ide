Welcome to Coq 8.4pl4 (November 2015)

Coq < Definition negb (b:bool) : bool := match b with | true => false | false => true end.
negb is defined

Coq < Theorem negb_involutive : forall b : bool, negb (negb b) = b.
1 subgoal
  
  ============================
   forall b : bool, negb (negb b) = b

negb_involutive < Proof.
1 subgoal
  
  ============================
   forall b : bool, negb (negb b) = b

negb_involutive < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  ============================
   forall b : bool, negb (negb b) = b

negb_involutive < intros b.
1 subgoal
  
  b : bool
  ============================
   negb (negb b) = b

negb_involutive < destruct b.
2 subgoals
  
  ============================
   negb (negb true) = true

subgoal 2 is:
 negb (negb false) = false

negb_involutive < reflexivity.
1 subgoal
  
  ============================
   negb (negb false) = false

negb_involutive < reflexivity.
No more subgoals.

negb_involutive < Qed.
info_auto.
intros b.
destruct b.
 reflexivity.

 reflexivity.

negb_involutive is defined

Coq < ^C
User interrupt.

Coq < ^C
User interrupt.

Coq < 
