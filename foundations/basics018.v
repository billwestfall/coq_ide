Welcome to Coq 8.4pl4 (November 2015)

Coq < Definition andb (b1:bool) (b2:bool) : bool := match b1 with | true => b2 | false => false end.
andb is defined

Coq < Theorem andb_commutative : forall b c, andb b c = andb c b.
1 subgoal
  
  ============================
   forall b c : bool, andb b c = andb c b

andb_commutative < Proof.    
1 subgoal
  
  ============================
   forall b c : bool, andb b c = andb c b

andb_commutative < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  ============================
   forall b c : bool, andb b c = andb c b

andb_commutative < intros b c.
1 subgoal
  
  b : bool
  c : bool
  ============================
   andb b c = andb c b

andb_commutative < destruct b.
2 subgoals
  
  c : bool
  ============================
   andb true c = andb c true

subgoal 2 is:
 andb false c = andb c false

andb_commutative < destruct c.
3 subgoals
  
  ============================
   andb true true = andb true true

subgoal 2 is:
 andb true false = andb false true
subgoal 3 is:
 andb false c = andb c false

andb_commutative < info_auto. 
(* info auto : *)
 apply @eq_refl.
2 subgoals
  
  ============================
   andb true false = andb false true

subgoal 2 is:
 andb false c = andb c false

andb_commutative < reflexivity.
1 subgoal
  
  c : bool
  ============================
   andb false c = andb c false

andb_commutative < destruct c.
2 subgoals
  
  ============================
   andb false true = andb true false

subgoal 2 is:
 andb false false = andb false false

andb_commutative < reflexivity.
1 subgoal
  
  ============================
   andb false false = andb false false

andb_commutative < reflexivity.
No more subgoals.

andb_commutative < Qed.
info_auto.
intros b c.
destruct b.
 destruct c.
  info_auto.

  reflexivity.

 destruct c.
  reflexivity.

  reflexivity.

andb_commutative is defined

Coq < 
