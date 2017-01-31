Welcome to Coq 8.4pl4 (November 2015)

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

Coq < Fixpoint length (l:natlist) : nat := match l with | nil => O | h :: t => S (length t) end.
length is recursively defined (decreasing on 1st argument)

Coq < Definition tl (l:natlist) : natlist := match l with | nil => nil | h :: t => t end.
tl is defined

Coq <  Theorem tl_length_pred : forall l : natlist, pred (length l) = length (tl l).
1 subgoal
  
  ============================
   forall l : natlist, pred (length l) = length (tl l)

tl_length_pred < intros l.
1 subgoal
  
  l : natlist
  ============================
   pred (length l) = length (tl l)

tl_length_pred < destruct l as [| n l'].
2 subgoals
  
  ============================
   pred (length []) = length (tl [])

subgoal 2 is:
 pred (length (n :: l')) = length (tl (n :: l'))

tl_length_pred < reflexivity.
1 subgoal
  
  n : nat
  l' : natlist
  ============================
   pred (length (n :: l')) = length (tl (n :: l'))

tl_length_pred < reflexivity.
No more subgoals.

tl_length_pred < Qed.
intros l.
destruct l as [| n l'].
 reflexivity.

 reflexivity.

tl_length_pred is defined
