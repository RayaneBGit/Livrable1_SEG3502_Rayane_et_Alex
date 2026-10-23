Feature: Update a hiker profile
  As a hiker or an authorized administrator
  I want to update permitted profile information
  So that the hiker's record remains current

  Scenario: Hiker updates personal profile details
    Given the requester is authorized to update the hiker
    When valid personal and emergency contact details are submitted
    Then the hiker profile is updated

  Scenario: Administrator updates membership or certification
    Given the requester is an authorized administrator
    When valid membership or organizer certification details are submitted
    Then the hiker profile and applicable organizer qualification are updated

  Scenario: Reject invalid data or insufficient permissions
    Given the submitted data is invalid or the requester lacks permission
    When the profile update is submitted
    Then the profile remains unchanged
    And the reason for rejection is reported
