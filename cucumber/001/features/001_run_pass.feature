Feature: Run proofs from command line

     Scenario: Run a passing proof
         Given a file named "test.v" with:
           """
           Theorem forward_small : (forall A B : Prop, A -> (A->B) -> B).
           Proof.
           intros A.
           intros B.
           intros proof_of_A.
           intros A_implies_B.
           pose (proof_of_B := A_implies_B proof_of_A).
           exact proof_of_B.
           Qed.
         """
          When I run `~/.opam/default/bin/coqc -verbose test.v`
          Then the output should not contain:
          """
          Error
          """

      Scenario: Run a failing proof
          Given a file named "test02.v" with:
            """
               Theorem my_first_proof : (forall A : Prop, A -> A).
               Proof.
               intros A.
               intros proof_of_A.
               exact proof_of_A.
               Qed.
            """
          When I run `~/.opam/default/bin/coqc -verbose test02.v`
          Then the output should not contain:
            """
            Error
            """
