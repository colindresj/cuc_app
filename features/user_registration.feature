Feature: User Registration
  As a unregistered user
  I want to sign up
  So that I can have a bank account

  Scenario: A user signs up
    Given an unregistered user name "Judy"
    When Judy signs up for the site
    Then she should have an account
    And it should say "Thanks for signing up!"

  Scenario: A user signs up without a name
    Given an unregistered user with no name
    When the users tries to sign up for the site
    Then they should not have an account
    And it should give an error that says "Name can't be blank"
