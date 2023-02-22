Feature: As an admin user
  I am able to create article CT

  @javascript @api @article
  Scenario: Verify I am able to view the article list page
    Given I am logged in as a user with the "administrator" role
    And I follow "Content"
    Then I click on "Add content" button with xpath "//*[@id='block-claro-local-actions']/ul/li/a"
    And I follow "Article"
    Then I should see the heading "Create Article"
    And I wait 5 seconds
    And I fill in "Title" with "Baking Hacks"
    And I select "Hacks" from "Tags" autocomplete field
    And I fill in wysiwyg on field "edit-body-0-value" with "Hacks for baking"
    And I wait for page load
    And I select "Published" from "Save as"
    And I press the "Save" button
    And I wait for page load
    Then I should see the heading "Baking Hacks"
    And I should see the link "Hacks"
    And I should see the text "Hacks for baking"
    And I log out
    And I visited ArticleList
    Then I see "Baking Hacks" on the "ArticleList"