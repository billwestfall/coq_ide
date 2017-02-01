Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Inductive prod (X Y : Type) : Type := | pair : X -> Y -> prod X Y.
prod is defined
prod_rect is defined
prod_ind is defined
prod_rec is defined

Coq < Arguments pair {X} {Y} _ _.

Coq < Notation "( x , y )" := (pair x y).
Setting notation at level 0.
<W> Grammar extension: in [constr:operconstr], some rule has been masked
<W> Grammar extension: in [constr:pattern], some rule has been masked

Coq < Notation "X * Y" := (prod X Y) : type_scope.
Warning: Notation _ * _ was already used in scope type_scope

Coq < Definition fst {X Y : Type} (p : X * Y) : X := match p with | (x, y) => x end.
fst is defined

Coq < Definition snd {X Y : Type} (p : X * Y) : Y := match p with | (x, y) => end.
Toplevel input, characters 72-75:
> Definition snd {X Y : Type} (p : X * Y) : Y := match p with | (x, y) => end.
>                                                                         ^^^
Syntax error: [constr:lconstr] expected after '=>' (in [eqn]).

Coq < Definition snd {X Y : Type} (p : X * Y) : Y := match p with | (x, y) => y end.
snd is defined
