Theorem le_plus_decl : forall n m p : nat, n < m -> n < p + m.
Proof.
    let n, m, p : nat be such that H:(n < m).
    per induction on p.
    suppose it is O.
    reconsider thesis as (n < m).
  suppose it is (S p') and IH:(n < p' + m).
    reconsider thesis as (n < S (p" + m)).
    thus thesis by IH.
  end induction.
end proof.
Qed.
