Feature: Edit a user
  As a user
  I should be able to edit myself

  Background:
    Given A user exists
    And I am logged in as a user
    Given I visit the edit user page

  Scenario: I should see the form
    Then I should be able to edit a user

  Scenario: Edit a user
    Given I edit the user fields
    Given I visit the homepage
    Then I should see the updated user
