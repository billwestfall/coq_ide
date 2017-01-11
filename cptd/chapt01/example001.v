Welcome to Coq 8.4pl5 (October 2014)

Coq < Section FirstSteps001.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

Coq < Inductive binop : Set := Plus | Times.
binop is defined
binop_rect is defined
binop_ind is defined
binop_rec is defined

Coq < Inductive exp : Set :=
| Const : nat -> exp
| Binop : binop -> exp -> exp -> exp.Coq < Coq < 
exp is defined
exp_rect is defined
exp_ind is defined
exp_rec is defined

Coq < Definition binopDenote := fun b =>
  match b with
    | Plus => plus
    | Times => mult
  end.Coq < Coq < Coq < Coq < 
binopDenote is defined

Coq < Fixpoint expDenote (e : exp) : nat :=
  match e with
    | Const n => n
    | Binop b e1 e2 => (binopDenote b) (expDenote e1) (expDenote e2)
  end.Coq < Coq < Coq < Coq < 
expDenote is recursively defined (decreasing on 1st argument)

Coq < Eval simpl in expDenote (Const 42).
     = 42
     : nat

Coq < Eval simpl in expDenote (Binop Plus (Const 2) (Const 2)).
     = 4
     : nat

Coq < Eval simpl in expDenote (Binop Times (Binop Plus (Const 2) (Const 2)) (Const 7)).
     = 28
     : nat

Coq < Eval simpl in expDenote (Binop Times (Binop Plus (Const 3) (Const 3)) (Const 6)).
     = 36
     : nat

Coq < 
