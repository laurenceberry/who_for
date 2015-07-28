Feature: Destroy a persona
  As a visitor
  I should be able to delete an existing persona

  Background:
    Given A user exists
    And I am logged in as a user
    Given There are profiles
    And I visit the homepage
    And I click on the persona

  Scenario: Delete the persona
    Given I click the first link "Delete Profile"
    Then I should no longer see the persona
