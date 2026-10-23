Feature: Close hikes whose registration deadline has passed
  As the scheduled system process
  I want to close eligible hikes
  So that registrations and cancellations stop at the deadline

  Scenario: Close a hike at its registration deadline
    Given a hike has reached its registration deadline
    And the hike is neither cancelled nor already closed
    When the scheduled close process runs
    Then the hike is marked closed
    And registrations and cancellations are prevented
    And the transition is audited

  Scenario: Repeated processing does not change a closed or cancelled hike
    Given a hike is already closed or cancelled
    When the scheduled close process runs more than once
    Then no additional state transition is applied
