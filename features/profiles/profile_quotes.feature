Feature: Profile quotes
  As a user
  I should be able to add multiple quotes
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
    Given I click the link "Add quote"
    Then I should see the quote form

  @javascript
  Scenario: I should be able to create a quote
    Given I click the link "Add quote"
    Given I fill in "Quote content" with "Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit."
