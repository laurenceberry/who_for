Feature: Profile images
  As a user
  I should be able to add multiple images
  To an existing profile

  Background:
    Given A user exists
    And I am logged in as a user
    Given There are packs
    Given There are profiles
    Given I visit the homepage
    And I click on the persona
    And I click the first link "Edit Profile"

  @javascript
  Scenario: I should be able to add a quote
    Given I click the link "Add another image"
    Then I should see the image form
