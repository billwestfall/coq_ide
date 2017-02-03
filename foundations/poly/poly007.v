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

Coq < Notation "x :: l" := (cons l) (at level 60, right associativity).
Error: x is unbound in the right-hand side.

Coq < Notation "x :: l" := (cons x l) (at level 60, right associativity).

Coq < Notation "[ ]" := nil.
Setting notation at level 0.

Coq < Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).
Setting notation at level 0.

Coq < Fixpoint filter {X:Type} (test: X -> bool) (l:list X) : (list X) := match l with | [] => [] | h :: t => if test h then h :: (filter test t) else filter test t end.
filter is recursively defined (decreasing on 3rd argument)

Coq < Fixpoint evenb (n:nat) : bool := match n with | O => true | S O => false | S (S n') => evenb n' end.
evenb is recursively defined (decreasing on 1st argument)

Coq < Example test_filter1: filter evenb [1;2;3;4] = [2;4].
1 subgoal
  
  ============================
   filter evenb [1; 2; 3; 4] = [2; 4]

test_filter1 < Proof.
1 subgoal
  
  ============================
   filter evenb [1; 2; 3; 4] = [2; 4]

test_filter1 < reflexivity.
No more subgoals.

test_filter1 < Qed.
reflexivity.

test_filter1 is defined

Coq < Fixpoint beq_nat (n m : nat) : bool := match n with | O => match m with | O => true | S m' => false end | S n' => match m with | O => false | S m' => beq_nat n' m' end end.
beq_nat is recursively defined (decreasing on 1st argument)

Coq < Definition length_is_1 {X : Type} (l : list X) : bool := beq_nat (length l) 1.
length_is_1 is defined

Coq < Example test_filter2: filter length_is_1 [ [1;2]; [3]; [4]; [5;6;7]; []; [8] ] = [ [3]; [4]; [8] ].
1 subgoal
  
  ============================
   filter length_is_1 [[1; 2]; [3]; [4]; [5; 6; 7]; []; [8]] =
   [[3]; [4]; [8]]

test_filter2 < Proof.
1 subgoal
  
  ============================
   filter length_is_1 [[1; 2]; [3]; [4]; [5; 6; 7]; []; [8]] =
   [[3]; [4]; [8]]

test_filter2 < reflexivity.
No more subgoals.

test_filter2 < Qed.
reflexivity.

test_filter2 is defined

Coq < Definition oddb (n:nat) : bool := negb (evenb n).
oddb is defined

Coq < Definition countoddmembers' (l:list nat) : nat := length (filter oddb l).
countoddmembers' is defined

Coq < Example test_countoddmembers'1: countoddmembers' [1;0;3;1;4;5] = 4.
1 subgoal
  
  ============================
   countoddmembers' [1; 0; 3; 1; 4; 5] = 4

test_countoddmembers'1 < Proof.
1 subgoal
  
  ============================
   countoddmembers' [1; 0; 3; 1; 4; 5] = 4

test_countoddmembers'1 < reflexivity.
No more subgoals.

test_countoddmembers'1 < Qed.
reflexivity.

test_countoddmembers'1 is defined

Coq < Example test_countoddmembers'2: countoddmembers' [0;2;4] = 0.
1 subgoal
  
  ============================
   countoddmembers' [0; 2; 4] = 0

test_countoddmembers'2 < Proof.
1 subgoal
  
  ============================
   countoddmembers' [0; 2; 4] = 0

test_countoddmembers'2 < reflexivity.
No more subgoals.

test_countoddmembers'2 < Qed.
reflexivity.

test_countoddmembers'2 is defined

Coq < Example test_countoddmembers'3: countoddmembers' nil = 0.
1 subgoal
  
  ============================
   countoddmembers' [] = 0

test_countoddmembers'3 < Proof.
1 subgoal
  
  ============================
   countoddmembers' [] = 0

test_countoddmembers'3 < reflexivity.
No more subgoals.

test_countoddmembers'3 < Qed.
reflexivity.

test_countoddmembers'3 is defined
