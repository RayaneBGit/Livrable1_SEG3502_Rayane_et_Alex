Feature: Cancel a hike registration
  As a hiker with a registration
  I want to cancel it before the deadline
  So that the place can be offered to another hiker

  Scenario: Cancel a registration and promote the next waitlisted hiker
    Given the hiker has a confirmed registration
    And the registration deadline has not passed
    And another hiker is first on the waitlist
    When the hiker confirms cancellation
    Then the registration is cancelled
    And the first waitlisted hiker is promoted and notified
    And the hike capacity and status are updated

  Scenario: Cancel a waitlisted registration
    Given the hiker has a waitlisted registration
    And the registration deadline has not passed
    When the hiker confirms cancellation
    Then the registration is cancelled
    And the waitlist order is updated

  Scenario: Reject cancellation after the deadline
    Given the registration deadline has passed
    When the hiker requests cancellation
    Then the registration remains unchanged
    And the reason for rejection is reported
