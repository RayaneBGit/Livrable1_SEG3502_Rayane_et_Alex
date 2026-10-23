Feature: Send hike reminders
  As the scheduled system process
  I want to remind confirmed participants about tomorrow's hikes
  So that they have the details needed to attend

  Scenario: Send a reminder with a weather warning
    Given a non-cancelled hike takes place tomorrow
    And the hike has confirmed registrations
    And rain or snow is forecast at the trail starting point
    When the reminder process runs
    Then each confirmed participant receives the hike details and a weather warning

  Scenario: Send a reminder when a forecast is unavailable
    Given a non-cancelled hike takes place tomorrow
    And the hike has confirmed registrations
    And the weather forecast is unavailable
    When the reminder process runs
    Then each confirmed participant receives the hike details without a weather warning

  Scenario: Record an email delivery failure
    Given a reminder email cannot be delivered
    When the reminder process runs
    Then the delivery failure is recorded
