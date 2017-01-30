Welcome to Coq 8.4pl6 (January 2017)

Coq < Notation "x ++ y" := (app x y) (right associativity, at level 60).

Coq < Notation "[ ]" := nil.
Setting notation at level 0.

Coq < Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).
Setting notation at level 0.

Coq < Example test_app1: [1;2;3] ++ [4;5] = [1;2;3;4;5].
1 subgoal
  
  ============================
   [1; 2; 3] ++ [4; 5] = [1; 2; 3; 4; 5]

test_app1 < Proof,

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
