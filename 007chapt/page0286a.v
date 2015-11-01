
UD:       all x
Bx:       x is black
Rx:       x is red

          forall x:A, B x
          exists x:A, B x
          forall x:A, ~B x
          exists x:A, ~B x
          exists x:A, B x /\ R x
          forall x:A, Bx -> ~Rx
          exists x:A, Bx /\ Rx
          forall x:A, ~B x -> R x
          forall x:A, B x <-> ~R x
          forall x:A, B x | R x
