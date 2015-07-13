Feature: Profile scalers
  As a user
  I should be able to add multiple scalers
  To an existing profile

  Background:
    Given There are packs
    Given There are profiles
    Given I visit the homepage
    And I click on the persona
    And I click the first link "Edit Profile"

  @javascript
  Scenario: I should be able to add a scaler
    Given I click the link "Add scaler"
    Then I should see the scaler form

  @javascript
  Scenario: I should be able to create a scaler
    Given I click the link "Add scaler"
    Given I fill in "Scale Name" with "Happiness"
    Given I fill in "Scale" with "5"
    Given I fill in "Out of" with "10"
    Given I click the button "Update Profile"
