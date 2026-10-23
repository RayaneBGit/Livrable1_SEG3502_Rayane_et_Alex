Feature: Create a hike
  As a qualified hike organizer
  I want to create a hike on an allowed NCC trail
  So that eligible hikers can register

  Scenario: Create a valid hike
    Given the organizer has a valid certification at a sufficient level
    And the NCC trail is real and permits hiking
    And the hike date is within the trail season
    And the registration deadline is within the allowed period
    And the capacity is positive
    When the organizer submits valid hike details
    Then the hike is saved with a unique identifier and open status
    And the hike is available for browsing and registration

  Scenario: Reject a hike that violates a creation rule
    Given the trail, season, organizer qualification, deadline, or capacity is invalid
    When the organizer submits the hike
    Then the hike is not created
    And the reason for rejection is reported
