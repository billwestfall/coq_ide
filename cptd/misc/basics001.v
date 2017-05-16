MacBook-Air:src billw$ pwd
/Users/billw/Documents/old/coq_ide/cptd/src
MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart_03.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
1 subgoal
  
  ============================
   forall a b c : Prop, (a \/ b) /\ (b \/ c) -> a \/ b \/ c

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
