@api
  Feature: The website displays the list of created recipes on the content listing page

    Scenario: Verify the recipes listing page after adding a new recipe.
      Given I am logged in as a user with the "administrator" role
      Given "recipe" content:
        | title          |  field_summary |
        | recipe one     |  recipe summary   |
      When I go to "admin/content"
      Then I should see "recipe one"

