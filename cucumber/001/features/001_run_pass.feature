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
          Given a file named "test02.sh" with:
            """
            #!/usr/bin/env bash -v

            coqc -verbose ~/Documents/old/git/coq_ide/cucumber/001/features/test002.v
            """
          When I run `test02.sh`
          Then the output should contain:
            """
            Error
            """
