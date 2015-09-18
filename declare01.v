Variable G : Set.
Variable operation : G -> G -> G.
Variable e : G.
Variable inv : G -> G.
Infix "×" := operation (left associativity, at level 50).
Theorem latin_square_property_decl : forall a b : G, exists x : G, a × x = b.
Proof.
  let a : G, b : G.
  take (inv a × b).
  have H1:(a × (inv a × b) = (a × inv a) × b) by associativity.
  have H2:(a × inv a = e) by inverse.
  have (a × (inv a × b) - e × b) by H1, H2.
                                      = b by identity.
  hence thesis.
end proof.
Qed.
