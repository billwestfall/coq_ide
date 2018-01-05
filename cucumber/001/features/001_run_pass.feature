Feature: Run simple command

#  Scenario: Using rubygems
#    Given I successfully run `ls`
#    Then the output should not contain:
#     """
#     Error
#     """

     Scenario: Run a simple command with a before hook
         Given a file named "bin/test.sh" with:
           """
           #!/usr/bin/env bash

           coqc -verbose features/test001.v
           """
         When I run `test.sh`
          Then the output should not contain:
          """
          Error
          """
