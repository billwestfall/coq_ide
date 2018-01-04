Theorem Restart_03 : forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ d).
Proof.
Add LoadPath "/Users/Shared/Files/cptd/src/" as CpdtTactics.
Require Import Classical.
Load CpdtTactics.
crush.
Qed.
