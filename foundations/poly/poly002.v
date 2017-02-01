Welcome to Coq 8.6 (January 2017)

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

Coq < Fixpoint repeat (X : Type) (x : X) (count : nat) : list X := match count with | 0 => nil X | S count' => cons X x (repeat X x count') end.
repeat is defined
repeat is recursively defined (decreasing on 3rd argument)

Coq < Example test_repeat1 : repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat)).
1 subgoal
  
  ============================
  repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat))

test_repeat1 < Proof.
1 subgoal
  
  ============================
  repeat nat 4 2 = cons nat 4 (cons nat 4 (nil nat))

test_repeat1 < reflexivity.
No more subgoals.

test_repeat1 < Qed.
Proof.
reflexivity.

Qed.
test_repeat1 is defined

Coq < Fixpoint repeat' X x count : list X := match count with | 0 => nil X | S count' => cons X x (repeat' X x count') end.
repeat' is defined
repeat' is recursively defined (decreasing on 3rd argument)

Coq < Check repeat'.
repeat'
     : forall X : Type, X -> nat -> list X

Coq < Check repeat.
repeat
     : forall X : Type, X -> nat -> list X

Coq < Fixpoint repeat'' X x count : list X := match count with | 0 => nil _ | S count' => cons _ x (repeat'' _ x count') end.
repeat'' is defined
repeat'' is recursively defined (decreasing on 3rd argument)

Coq < Definition list123 := cons nat 1 (cons nat 2 (cons nat 3 (nil nat))).
list123 is defined

Coq < Definition list123' := cons _ 1 (cons _ 2 (cons _ 3 (nil _))).
list123' is defined
