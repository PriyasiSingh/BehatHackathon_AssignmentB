
Feature: As a user I am able to search using keywords

  @en @javascript @api @Search
  Scenario: Verify user is able to perform Search using keywords
    Given I am on homepage
    And I search for "nut" on the "Homepage"
    Then I see "Vegan chocolate and nut brownies" on the "Search"