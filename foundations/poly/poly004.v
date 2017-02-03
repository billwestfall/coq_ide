Welcome to Coq 8.4pl4 (November 2015)

Coq < Definition doit3times {X:Type} (f:X -> X) (n:X) : X := f (f (f n)).
doit3times is defined

Coq < Check @doit3times.
doit3times
     : forall X : Type, (X -> X) -> X -> X

Coq < Definition minustwo (n : nat) : nat := match n with | O => O | S O => O | S (S n') => n' end.
minustwo is defined

Coq < Example test_doit3times: doit3times minustwo 9 = 3.
1 subgoal
  
  ============================
   doit3times minustwo 9 = 3

test_doit3times < reflexivity.
No more subgoals.

test_doit3times < Qed.
reflexivity.

test_doit3times is defined

Coq < Example test_doit3times'': doit3times minustwo 9 = 3.
1 subgoal
  
  ============================
   doit3times minustwo 9 = 3

test_doit3times'' < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_doit3times'' < Qed.
info_auto.

test_doit3times'' is defined

Coq < Definition negb (b:bool) : bool := match b with | true => false | false => true end.
negb is defined

Coq < Example test_doit3times': doit3times negb true = false.
1 subgoal
  
  ============================
   doit3times negb true = false

test_doit3times' < Proof.
1 subgoal
  
  ============================
   doit3times negb true = false

test_doit3times' < reflexivity.
No more subgoals.

test_doit3times' < Qed.
reflexivity.

test_doit3times' is defined
