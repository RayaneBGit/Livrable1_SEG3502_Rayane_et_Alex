Feature: Browse hikes
  As a visitor or registered user
  I want to browse upcoming hikes
  So that I can find hikes that match my interests and abilities

  Scenario: Browse hikes matching search criteria
    Given upcoming hikes exist on NCC trails
    When the user searches by trail name, date, and difficulty
    Then matching hikes are returned in date order
    And each result shows its details, organizer, and remaining places

  Scenario: No hikes match the search
    Given no upcoming hike matches the search criteria
    When the user browses hikes
    Then an empty result is returned without an error

  Scenario: NCC data source is unavailable
    Given locally available trail data exists
    And the NCC data source is unavailable
    When the user browses hikes
    Then the system uses the locally available data
