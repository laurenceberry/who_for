Feature: Edit a profile
  As a visitor
  I should be able to edit an existing persona

  Background:
    Given There are packs
    Given There are profiles
    Given I visit the homepage
    And I click on the persona
    And I click the first link "Edit Profile"

  Scenario: I should see the form
    Then I should be able to edit a persona

  Scenario: Edit a persona
    Given I edit the profile fields
    And I click on the persona
    Then I should see the updated persona
