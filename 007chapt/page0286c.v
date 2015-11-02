
UD:       all x
Px:       x pass
Sx:       x study
j:        Jamie
r:        Rhoda

          forall x:A, Pj -> Px
          forall x:A, ~Px \/ Pj
          exists x:A, Px -> (Pj /\ Pr)
          forall x:A, ~Px /\ Pr
          forall x:A, ~Pr -> ~Px
          exists x:A, Px /\ ~Px
          forall x:A, (Pj -> Pr) /\ (Pr -> Px)
          forall x:A, (~Pj -> ~Px) \/ (Pj -> Px)
          forall x:A, Sx /\ ~Px
          forall x:A, Sx -> Px
          forall x:A, Sx -> (Px /\ ~Px)
