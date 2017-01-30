Welcome to Coq 8.4pl6 (January 2017)

Coq < Inductive natlist : Type := | nil : natlist | cons : nat -> natlist -> natlist.
natlist is defined
natlist_rect is defined
natlist_ind is defined
natlist_rec is defined

Coq < Definition mylist := cons 1 (cons 2 (cons 3 nil)).
mylist is defined

Coq < Notation "x :: l" := (cons x l) (at level 60, right associativity).

Coq < Notation "[ ]" := nil.
Setting notation at level 0.

Coq < Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).
Setting notation at level 0.

Coq < Definition mylist1 := 1 :: (2 :: (3 :: nil)).
mylist1 is defined

Coq < Definition mylist2 := 1 :: 2 :: 3 :: nil.
mylist2 is defined

Coq < Definition mylist3 := [1;2;3].
mylist3 is defined

Coq < Notation "x + y" := (plus x y) (at level 50, left associativity).

Coq < Fixpoint repeat (n count : nat) : natlist := match count with | O => nil | S count' => n :: (repeat n count') end.
repeat is recursively defined (decreasing on 2nd argument)

Coq < Fixpoint length (l:natlist) : nat := match l with | nil => O | h :: t => S (length t) end.
length is recursively defined (decreasing on 1st argument)

Coq < Fixpoint app (l1 l2 : natlist) : natlist := match l1 with | nil => l2 | h :: t => h :: (app t l2) end.
app is recursively defined (decreasing on 1st argument)

Coq < Notation "x ++ y" := (app x y) (right associativity, at level 60).

Coq < Example test_app1: [1;2;3] ++ [4;5] = [1;2;3;4;5].
1 subgoal
  
  ============================
   [1; 2; 3] ++ [4; 5] = [1; 2; 3; 4; 5]

test_app1 < Proof.
1 subgoal
  
  ============================
   [1; 2; 3] ++ [4; 5] = [1; 2; 3; 4; 5]

test_app1 < reflexivity.
No more subgoals.

test_app1 < Qed.
reflexivity.

test_app1 is defined

Coq < Example test_app2: nil ++ [4;5] = [4;5].
1 subgoal
  
  ============================
   [] ++ [4; 5] = [4; 5]

test_app2 < Proof.
1 subgoal
  
  ============================
   [] ++ [4; 5] = [4; 5]

test_app2 < reflexivity.
No more subgoals.

test_app2 < Qed.
reflexivity.

test_app2 is defined

Coq < Example test_app3: [1;2;3] ++ nil = [1;2;3].
1 subgoal
  
  ============================
   [1; 2; 3] ++ [] = [1; 2; 3]

test_app3 < Proof.
1 subgoal
  
  ============================
   [1; 2; 3] ++ [] = [1; 2; 3]

test_app3 < reflexivity.
No more subgoals.

test_app3 < Qed.
reflexivity.

test_app3 is defined
