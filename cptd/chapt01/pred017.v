Coq < Section Predicate017.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (M : X->Prop), (forall x : X, exists y : X, M x y) -> (exists x : X, exists y : X, M x y).
Toplevel input, characters 67-72:
> Goal forall (X : Type) (M : X->Prop), (forall x : X, exists y : X, M x y) -> (exists x : X, exists y : X, M x y).
>                                                                    ^^^^^
Error: Illegal application (Non-functional construction): 
The expression "M x" of type "Prop" cannot be applied to the term
 "y" : "X"

Coq < 
