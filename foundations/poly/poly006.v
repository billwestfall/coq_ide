Welcome to Coq 8.4pl4 (November 2015)

Coq < Definition doit3times {X:Type} (f:X -> X) (n:X) : X := f (f (f n)).
doit3times is defined

Coq < Check @doit3times.
doit3times
     : forall X : Type, (X -> X) -> X -> X

Coq < Definition minustwo (n : nat) : nat := match n with | O => O | S O => O | S (S n') => n' end.
minustwo is defined

Coq < Definition negb (b:bool) : bool := match b with | true => false | false => true end.
negb is defined

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
