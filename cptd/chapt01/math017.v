Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math017.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, (4 * x) * 25 = (101 * x).
1 subgoal
  
  ============================
   forall x : nat, 4 * x * 25 = 101 * x

Unnamed_thm < crush.
1 subgoal
  
  x : nat
  ============================
   (x + (x + (x + (x + 0)))) * 25 =
   x +
   (x +
    (x +
     (x +
      (x +
       (x +
        (x +
         (x +
          (x +
           (x +
            (x +
             (x +
              (x +
               (x + (x + (x + (x + (x + (x + (x + (x + (x + (x + ..))))))))))))))))))))))

Unnamed_thm < 
