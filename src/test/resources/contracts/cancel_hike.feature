Feature: Cancel a hike
  As the responsible organizer or an administrator
  I want to cancel a hike before it starts
  So that participants are informed of the cancellation

  Scenario: Cancel a hike and notify registered hikers
    Given the requester is authorized to cancel a hike
    And the hike has not started
    And the hike has confirmed or waitlisted registrations
    When the requester submits a cancellation reason and confirms
    Then the hike and its registrations are marked cancelled
    And each affected hiker is sent an email with the reason

  Scenario: Keep the cancellation when email delivery fails
    Given the requester is authorized and the hike has not started
    When the hike is cancelled but an email cannot be delivered
    Then the hike remains cancelled
    And the notification failure is recorded

  Scenario: Reject cancellation by an unauthorized requester or after the hike starts
    Given the requester is not authorized or the hike has already started
    When cancellation is requested
    Then the hike remains unchanged
    And the reason for rejection is reported
