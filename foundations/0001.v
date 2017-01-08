Coq < Section Basics001.

Coq < Require Import Classical.

Coq < Definition admit {T: Type} : T.
1 subgoal
  
  T : Type
  ============================
   T

admit < Inductive day : Type :=
  | monday : day
  | tuesday : day
  | wednesday : day
  | thursday : day
  | friday : day
  | saturday : day
  | sunday : day.admit < admit < admit < admit < admit < admit < admit < 
day is defined
day_rect is defined
day_ind is defined
day_rec is defined

admit < Definition next_weekday (d:day) : day :=
  match d with
  | monday    => tuesday
  | tuesday   => wednesday
  | wednesday => thursday
  | thursday  => friday
  | friday    => monday
  | saturday  => monday
  | sunday    => monday
  end.admit < admit < admit < admit < admit < admit < admit < admit < admit < 
next_weekday is defined

admit < Compute (next_weekday friday).
     = monday
     : day

admit < Compute (next_weekday (next_weekday saturday)).
     = tuesday
     : day
