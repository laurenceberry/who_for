Feature: Edit a profile
  As a visitor
  I should be able to edit an existing persona

  Background:
    Given A persona exists
    And I visit the edit persona page

  Scenario: I should see the form
    Then I should be able to edit a persona

  Scenario: Edit a persona
    Given I edit the profile fields
    And I submit the fields
    Then I should see the updated persona

