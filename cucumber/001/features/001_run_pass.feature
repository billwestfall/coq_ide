Feature: Run proofs from command line

     Scenario: Run a passing proof
         Given a file named "test.sh" with:
           """
           #!/usr/bin/env bash -v

           coqc -verbose ~/Documents/old/git/coq_ide/cucumber/001/features/test001.v
           """
         When I run `test.sh`
          Then the output should not contain:
          """
          Error
          """

      Scenario: Run a failing proof
          Given a file named "test02.v" with:
            """
            Theorem Restart_03 : forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ d).
            Proof.
            Add LoadPath "/Users/Shared/Files/cptd/src/" as CpdtTactics.
            Require Import Classical.
            Load CpdtTactics.
            crush.
            Qed.
            """
          When I run `coqc -verbost test02.v`
          Then the output should contain:
            """
            Error
            """
