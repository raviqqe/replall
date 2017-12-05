Feature: Replacement
  Scenario: Replace no patterns in a file
    Given a file named "foo.md" with "# My Readme"
    And a file named "bar.md" with ""
    When I successfully run `replall foo bar`
    And I successfully run `cat foo.md`
    Then the stdout should contain "# My Readme"
