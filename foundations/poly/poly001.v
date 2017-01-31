Welcome to Coq 8.4pl6 (January 2017)

Coq < Inductive boollist : Type := | bool_nil : boollist | bool_cons : bool -> boollist -> boollist.
boollist is defined
boollist_rect is defined
boollist_ind is defined
boollist_rec is defined

Coq < Inductive list (X:Type) : Type := | nil : list X | cons : X -> list X -> list X.
list is defined
list_rect is defined
list_ind is defined
list_rec is defined

Coq < Check nil.
nil
     : forall X : Type, list X

Coq < Check cons.
cons
     : forall X : Type, X -> list X -> list X

Coq < Check (cons nat 2 (cons nat 1 (nil nat))).
cons nat 2 (cons nat 1 (nil nat))
     : list nat

Coq < Fixpoint repeat (X : Type) (x : X) (count : nat) : list X := match count with | O => nil X | S count' => cons X x (repeat X x count') end.
repeat is recursively defined (decreasing on 3rd argument)

Coq < Example test_repeat1 : repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat)).
1 subgoal
  
  ============================
   repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat))

test_repeat1 < Proof.
1 subgoal
  
  ============================
   repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat))

test_repeat1 < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_repeat1 < Qed.
info_auto.

test_repeat1 is defined

Coq < Example test_repeat2 : repeat bool false 1 = cons bool false (nil bool).
1 subgoal
  
  ============================
   repeat bool false 1 = cons bool false (nil bool)

test_repeat2 < Proof.
1 subgoal
  
  ============================
   repeat bool false 1 = cons bool false (nil bool)

test_repeat2 < info_auto.
(* info auto : *)
 apply @eq_refl.
No more subgoals.

test_repeat2 < Qed.
info_auto.

test_repeat2 is defined
