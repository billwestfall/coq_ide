Coq < Section Basics002.

Coq < Definition admit {T: Type} : T.
1 subgoal
  
  T : Type
  ============================
   T

admit < Inductive bool : Type :=
  | true : bool
  | false : bool.admit < admit < 
bool is defined
bool_rect is defined
bool_ind is defined
bool_rec is defined

admit < Definition negb (b:bool) : bool :=
  match b with
  | true => false
  | false => true
  end.admit < admit < admit < admit < 
negb is defined

admit < Definition andb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => b2
  | false => false
  end.admit < admit < admit < admit < 
andb is defined

admit < Definition orb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => true
  | false => b2
  end.admit < admit < admit < admit < 
orb is defined

admit < Example test_orb1:  (orb true  false) = true.
Proof. simpl. reflexivity.  Qed.
Example test_orb2:  (orb false false) = false.
Proof. simpl. reflexivity.  Qed.
Example test_orb3:  (orb false true)  = true.
Proof. simpl. reflexivity.  Qed.
Example test_orb4:  (orb true  true)  = true.
Proof. simpl. reflexivity.  Qed.1 subgoal
  
  ============================
   orb true false = true

test_orb1 < 1 subgoal
  
  ============================
   orb true false = true

1 subgoal
  
  ============================
   true = true

No more subgoals.

simpl.
reflexivity.

test_orb1 is defined

admit < 1 subgoal
  
  ============================
   orb false false = false

test_orb2 < 1 subgoal
  
  ============================
   orb false false = false

1 subgoal
  
  ============================
   false = false

No more subgoals.

simpl.
reflexivity.

test_orb2 is defined

admit < 1 subgoal
  
  ============================
   orb false true = true

test_orb3 < 1 subgoal
  
  ============================
   orb false true = true

1 subgoal
  
  ============================
   true = true

No more subgoals.

simpl.
reflexivity.

test_orb3 is defined

admit < 1 subgoal
  
  ============================
   orb true true = true

test_orb4 < Infix "&&" := andb.
Infix "||" := orb.1 subgoal
  
  ============================
   orb true true = true

1 subgoal
  
  ============================
   true = true

No more subgoals.

test_orb4 < 
test_orb4 < Proof. simpl. reflexivity.  Qed.
No more subgoals.

simpl.
reflexivity.

test_orb4 is defined

admit < Infix "&&" := andb.

admit < Infix "||" := orb.

admit < Example test_orb5:  false || false || true = true.
1 subgoal
  
  ============================
   false || false || true = true

test_orb5 < Proof.
1 subgoal
  
  ============================
   false || false || true = true

test_orb5 < simpl.
1 subgoal
  
  ============================
   true = true

test_orb5 < reflexivity.
No more subgoals.

test_orb5 < Qed.
simpl.
reflexivity.

test_orb5 is defined
