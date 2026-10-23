Feature: Register a hiker
  As a club member with an invitation code
  I want to create a hiker account
  So that I can use member features

  Scenario: Register an eligible adult hiker
    Given a valid unused invitation code
    And no account exists for the supplied email address
    And the hiker accepts the liability waiver
    When the visitor submits valid profile and login details
    Then an active hiker account is created
    And the invitation code is consumed

  Scenario: Register a minor with guardian consent
    Given a valid unused invitation code
    And no account exists for the supplied email address
    And the hiker is a minor
    And a legal guardian's consent and name are provided
    When the visitor submits valid profile and login details
    Then an active hiker account is created

  Scenario: Reject invalid registration details
    Given the invitation code is invalid or already used
    Or an account already exists for the supplied email address
    Or the liability waiver or required guardian consent is missing
    When the visitor submits the registration
    Then the account is not created
    And the reason for rejection is reported
