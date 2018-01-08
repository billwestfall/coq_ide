Feature: Run simple command

     Scenario: Run a simple command with a before hook
         Given a file named "bin/test.sh" with:
           """
           #!/usr/bin/env bash -v

           coqc -verbose ~/Documents/old/git/coq_ide/cucumber/001/features/test001.v
           """
         When I run `bin/test.sh`
          Then the output should not contain:
#          Then the file named "~/Documents/old/git/coq_ide/cucumber/001/features/test001.txt" should contain:
          """
          Error
          """
