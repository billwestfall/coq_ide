
UD:       all x
Ex:       x is even
Ox:       x is odd
Lxy:      x is less than y
Mxy:      x is more than y
Px:       x is prime
Gx:       x is > 0
a:        1
b:        2
c:        4
d:        100

          exists x:A, O x \/ E x
          exists x:A, O x /\ E x
          forall x:A, ~Lxa
          forall x:A, ~Mxd
          forall x:A, Gx
          forall x:A, Ox -> Lxd
          exists x:A, Px /\ Ex
          exists x:A, Px /\ ~Ex
          forall x:A, Px /\ Ox -> Mxb
          forall x:A, ~Px /\ Lxb
          exists x:A, Mxb /\ Lxc
