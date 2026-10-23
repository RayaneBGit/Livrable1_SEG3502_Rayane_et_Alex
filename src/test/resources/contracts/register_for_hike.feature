Feature: Register for a hike
  As an active hiker
  I want to register for an eligible hike
  So that I can participate

  Scenario: Register while a place is available
    Given the hiker has an active membership and a compatible skill level
    And the hike is open and its registration deadline has not passed
    And at least one place is available
    When the hiker requests registration
    Then a confirmed registration is created
    And the remaining capacity is updated
    And a confirmation email is requested

  Scenario: Join the waitlist when the hike is full
    Given the hiker is eligible and the hike is full
    And the hike accepts waitlist registrations
    When the hiker requests registration
    Then a waitlisted registration is created in chronological order
    And a waitlist email is requested

  Scenario: Reject an ineligible or duplicate registration
    Given the membership is inactive, the skill level is insufficient, the deadline has passed, or a registration already exists
    When the hiker requests registration
    Then no registration is created
    And the reason for rejection is reported
