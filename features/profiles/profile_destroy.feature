Feature: Destroy a persona
  As a visitor
  I should be able to delete an existing persona

  Background:
    Given There are profiles
    And I visit the homepage
    And I click on the persona

  Scenario: Delete the persona
    Given I click the link "Destroy"
    Then I should no longer see the persona
