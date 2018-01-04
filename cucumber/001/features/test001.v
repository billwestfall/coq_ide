Section Restart_03.
Require Import Classical.
Load CpdtTactics.
Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
crush.
Qed.
