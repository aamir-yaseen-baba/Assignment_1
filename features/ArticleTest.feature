@api
  Feature: User can create Articles of the Article content type on the website

    Scenario: Verify Article content Type exists by creating an article and viewing it
      Given I am logged in as a user with the "administrator" role
      Given "article" content:
        | title          |  body         |
        | First article  |  article body |
      When I go to "admin/content"
      And I follow "First article"
      Then I should see "article body"


