Feature: Create a user
  As a visitor
  I should be able to become a user

  Background:
    Given I visit the new user page

  Scenario: I should see the form
    Then I should be able to create a user

  Scenario: Create a new user
    Given I fill in the user fields
    Given I visit the homepage
    Then I should see the user
