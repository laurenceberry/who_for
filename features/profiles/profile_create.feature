Feature: Create a profile
  As a visitor
  I should be able to create a new persona

  Background:
    Given A user exists
    And I am logged in as a user
    Given There are packs
    Given I visit the homepage
    Given I visit a pack
    Given I click the link "Add new persona" 

  Scenario: I should see the form
    Then I should be able to create a persona

  Scenario: Create a new persona
    Given I fill in the profile fields
    Then I should see the persona

  Scenario: Create a new persona - Generate a name
    Given I check "Generate name"
    Given I fill in the profile fields
    Then I should see the generated name

