Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate030.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (D H : X->Prop), (forall x : X, exists z : X, D x -> H x z) -> (exists z : X, forall x : X, D x -> H x z).
Toplevel input, characters 76-81:
> Goal forall (X : Type) (D H : X->Prop), (forall x : X, exists z : X, D x -> H x z) -> (exists z : X, forall x : X, D x -> H x z).
>                                                                             ^^^^^
Error: Illegal application (Non-functional construction): 
The expression "H x" of type "Prop" cannot be applied to the term
 "z" : "X"

Coq < 
