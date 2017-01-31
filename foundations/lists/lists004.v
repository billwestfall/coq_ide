Welcome to Coq 8.4pl6 (January 2017)

Coq < Inductive natoption : Type := | Some : nat -> natoption | None : natoption.
natoption is defined
natoption_rect is defined
natoption_ind is defined
natoption_rec is defined

Coq < Inductive natlist : Type := | nil : natlist | cons : nat -> natlist -> natlist.
natlist is defined
natlist_rect is defined
natlist_ind is defined
natlist_rec is defined

Coq < Notation "[ ]" := nil.
Setting notation at level 0.

Coq < Notation "x ++ y" := (app x y) (right associativity, at level 60).

Coq < Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).
Setting notation at level 0.

Coq < Notation "x :: l" := (cons x l) (at level 60, right associativity).

Coq < Fixpoint beq_nat (n m : nat) : bool := match n with | O => match m with | O => true | S m' => false end | S n' => match m with | O => false | S m' => beq_nat n' m' end end.
beq_nat is recursively defined (decreasing on 1st argument)

Coq < Fixpoint nth_error (l:natlist) (n:nat) : natoption := match l with | nil => None | a :: l' => match beq_nat n O with | true => Some a | false => nth_error l' (pred n) end end.
nth_error is recursively defined (decreasing on 1st argument)

Coq < Example test_nth_error1 : nth_error [4;5;6;7] 0 = Some 4.
1 subgoal
  
  ============================
   nth_error (4 :: 5 :: 6 :: 7 :: []) 0 = Some 4

test_nth_error1 < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_nth_error1 < Qed.
info_auto.

test_nth_error1 is defined

Coq < Example test_nth_error2 : nth_error [4;5;6;7] 3 = Some 7.
1 subgoal
  
  ============================
   nth_error (4 :: 5 :: 6 :: 7 :: []) 3 = Some 7

test_nth_error2 < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_nth_error2 < Qed.
info_auto.

test_nth_error2 is defined

Coq < Example test_nth_error3 : nth_error [4;5;6;7] 9 = None.
1 subgoal
  
  ============================
   nth_error (4 :: 5 :: 6 :: 7 :: []) 9 = None

test_nth_error3 < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_nth_error3 < Qed.
info_auto.

test_nth_error3 is defined
