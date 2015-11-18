MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Cats.

Coq < Variables c k f:Prop.
c is assumed
k is assumed
f is assumed

Coq < Goal forall c f, (exists k, ((c -> f) /\ (k -> c)) -> (k -> f)).
Toplevel input, characters 30-36:
> Goal forall c f, (exists k, ((c -> f) /\ (k -> c)) -> (k -> f)).
>                               ^^^^^^
Error:
In environment
c : Prop
k : Prop
f : Prop
c0 : Type
f0 : Type
k0 : ?3
The term "c0 -> f0" has type "Type" while it is expected to have type
"Prop".

Coq <
