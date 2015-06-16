Feature: Homepage
  As a visitor
  I should see the homepage
  Also I can create a new persona from the homepage
  Also I can see a selection of existing personas
  Also I can see a selection of existing packs

  Background:
    Given I visit the homepage

  Scenario: I see the homepage
    Then I should see the homepage

  Scenario: I see a selection of existing personas
    Then I should see 5 existing personas

  Scenario: I see a selection of existing packs
    Then I should see 5 existing packs
