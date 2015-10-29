MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Variable D : Set.
D is assumed
Warning: D is declared as a parameter because it is at a global level

Coq < Variable P : D -> Prop.
P is assumed
Warning: P is declared as a parameter because it is at a global level

Coq < Hypothesis EM : forall A:Prop, A \/ ~ A.
EM is assumed
Warning: EM is declared as a parameter because it is at a global level

Coq < Lemma drinker : exists x:D, P x -> forall x:D, P x.
1 subgoal
  
  ============================
   exists x : D, P x -> forall x0 : D, P x0

drinker < elim (EM (exists x, ~ P x)).
2 subgoals
  
  ============================
   (exists x : D, ~ P x) -> exists x : D, P x -> forall x0 : D, P x0

subgoal 2 is:
 ~ (exists x : D, ~ P x) -> exists x : D, P x -> forall x0 : D, P x0

drinker < intro Non_drinker; elim Non_drinker; intros Tom Tom_does_not_drink.
2 subgoals
  
  Non_drinker : exists x : D, ~ P x
  Tom : D
  Tom_does_not_drink : ~ P Tom
  ============================
   exists x : D, P x -> forall x0 : D, P x0

subgoal 2 is:
 ~ (exists x : D, ~ P x) -> exists x : D, P x -> forall x0 : D, P x0

drinker < exists Tom; intro Tom_drinks.
2 subgoals
  
  Non_drinker : exists x : D, ~ P x
  Tom : D
  Tom_does_not_drink : ~ P Tom
  Tom_drinks : P Tom
  ============================
   forall x : D, P x

subgoal 2 is:
 ~ (exists x : D, ~ P x) -> exists x : D, P x -> forall x0 : D, P x0

drinker < absurd (P Tom); trivial.
1 subgoal
  
  ============================
   ~ (exists x : D, ~ P x) -> exists x : D, P x -> forall x0 : D, P x0

drinker < Variable d : D.
d is assumed
Warning: d is declared as a parameter because it is at a global level

drinker < intro No_nondrinker; exists d; intro d_drinks.
1 subgoal
  
  No_nondrinker : ~ (exists x : D, ~ P x)
  d_drinks : P d
  ============================
   forall x : D, P x

drinker < intro Dick; elim (EM (P Dick)); trivial.
1 subgoal
  
  No_nondrinker : ~ (exists x : D, ~ P x)
  d_drinks : P d
  Dick : D
  ============================
   ~ P Dick -> P Dick

drinker < intro Dick_does_not_drink; absurd (exists x, ~ P x); trivial.
1 subgoal
  
  No_nondrinker : ~ (exists x : D, ~ P x)
  d_drinks : P d
  Dick : D
  Dick_does_not_drink : ~ P Dick
  ============================
   exists x : D, ~ P x

drinker < exists Dick; trivial.
No more subgoals.

drinker < Qed.
elim (EM (exists x, ~ P x)).
 intro Non_drinker; elim Non_drinker; intros Tom Tom_does_not_drink.
 exists Tom; intro Tom_drinks.
 absurd (P Tom); trivial.

 intro No_nondrinker; exists d; intro d_drinks.
 intro Dick; elim (EM (P Dick)); trivial.
 intro Dick_does_not_drink; absurd (exists x, ~ P x); trivial.
 exists Dick; trivial.

drinker is defined

Coq < End predicate_calculus.
Error: There is nothing to end.

Coq < Check drinker.
drinker
     : exists x : D, P x -> forall x0 : D, P x0

Coq < 
