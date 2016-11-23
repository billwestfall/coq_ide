(precise)admin@localhost:~/Downloads/coq_ide/logic$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Connectives.

Coq < Variables S T R : Prop.
S is assumed
T is assumed
R is assumed

Coq < Goal ((S -> T) /\ (T -> R) /\ ~R) -> ~S.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  ============================
   (S -> T) /\ (T -> R) /\ ~ R -> ~ S

Unnamed_thm < intros.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : (S -> T) /\ (T -> R) /\ ~ R
  ============================
   ~ S

Unnamed_thm < elim H.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : (S -> T) /\ (T -> R) /\ ~ R
  ============================
   (S -> T) -> (T -> R) /\ ~ R -> ~ S

Unnamed_thm < intro.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : (S -> T) /\ (T -> R) /\ ~ R
  H0 : S -> T
  ============================
   (T -> R) /\ ~ R -> ~ S

Unnamed_thm < intro.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : (S -> T) /\ (T -> R) /\ ~ R
  H0 : S -> T
  H1 : (T -> R) /\ ~ R
  ============================
   ~ S

Unnamed_thm < auto.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : (S -> T) /\ (T -> R) /\ ~ R
  H0 : S -> T
  H1 : (T -> R) /\ ~ R
  ============================
   ~ S

Unnamed_thm < destruct H.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : S -> T
  H2 : (T -> R) /\ ~ R
  H0 : S -> T
  H1 : (T -> R) /\ ~ R
  ============================
   ~ S

Unnamed_thm < auto.
1 subgoal
  
  S : Prop
  T : Prop
  R : Prop
  H : S -> T
  H2 : (T -> R) /\ ~ R
  H0 : S -> T
  H1 : (T -> R) /\ ~ R
  ============================
   ~ S

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
auto.
destruct H.
auto.
tauto.

Unnamed_thm is defined

Coq < 
