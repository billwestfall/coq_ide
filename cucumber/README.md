Trying out cucumber as front end for command line coq using Adam Chlipala's crush tactic

You can run the proofs manually like:

`coqc -verbose test001.v `

output like:
<pre>
Theorem Restart_03 : forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
Proof.
Add LoadPath "/Users/Shared/Files/cptd/src/" as CpdtTactics.
Require Import Classical.
Load CpdtTactics.
crush.
Qed. 
</pre>

path for coqc is hardcoded in files (like /Applications/CoqIDE_8.12.0.app/Contents/Resources/bin/coqc ), you can update/replace this path with your path
