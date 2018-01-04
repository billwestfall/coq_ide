Trying out cucumber as front end for command line coq using Adam Chlipala's crush tactic

You can run the proofs manually like:

`coqc -verbose test001.v `

output like:
<pre>
`Theorem Restart_03 : forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
Proof.
Add LoadPath "/Users/Shared/Files/cptd/src/" as CpdtTactics.
Require Import Classical.
Load CpdtTactics.
crush.
Qed. `
</pre>
