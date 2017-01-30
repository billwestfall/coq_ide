Welcome to Coq 8.4pl4 (November 2015)

Coq < Inductive natprod : Type := | pair : nat -> nat -> natprod.
natprod is defined
natprod_rect is defined
natprod_ind is defined
natprod_rec is defined

Coq < Check (pair 3 5).
pair 3 5
     : natprod

Coq < Definition fst (p : natprod) : nat := match p with | pair x y -> x end.
Toplevel input, characters 62-64:
> Definition fst (p : natprod) : nat := match p with | pair x y -> x end.
>                                                               ^^
Syntax error: '|' or '=>' expected (in [eqn]).

Coq < Definition fst (p : natprod) : nat := match p with | pair x y -> x end.
Toplevel input, characters 62-64:
> Definition fst (p : natprod) : nat := match p with | pair x y -> x end.
>                                                               ^^
Syntax error: '|' or '=>' expected (in [eqn]).

Coq < Definition fst (p : natprod) : nat := match p with | pair x y => x end.
fst is defined

Coq < Definition snd (p : natprod) : nat := match p with | pair x y => y end.
snd is defined

Coq < Compute (fst (pair 3 5)).
     = 3
     : nat

Coq < Notation "( x , y )" := (pair x y).
Setting notation at level 0.
<W> Grammar extension: in [constr:operconstr], some rule has been masked
<W> Grammar extension: in [constr:pattern], some rule has been masked

Coq < Compute (fst (3,5)).
     = 3
     : nat

Coq < Definition fst' (p : natprod) : nat := match p with | (x,y) => x end.
fst' is defined

Coq < Definition snd' (p : natprod) : nat := match p with | (x,y) => y end.
snd' is defined

Coq < Definition swap_pair (p : natprod) : natprod := match p with | (x,y) => (y,x) end.
swap_pair is defined

Coq < Theorem surjective_pairing' : forall(n m : nat), (n,m) = (fst (n,m), snd (n,m)).
1 subgoal
  
  ============================
   forall n m : nat, (n, m) = (fst (n, m), snd (n, m))

surjective_pairing' < Proof.
1 subgoal
  
  ============================
   forall n m : nat, (n, m) = (fst (n, m), snd (n, m))

surjective_pairing' < reflexivity.
No more subgoals.

surjective_pairing' < Qed.
reflexivity.

surjective_pairing' is defined
