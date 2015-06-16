Feature: Destroy a persona
  As a visitor
  I should be able to delete an existing persona

  Background:
    Given A persona exists
    And I visit the delete persona link

  Scenario: Delete the persona
    Then I should no longer see the persona
