Feature: Website has header and footer, which should appear on all the pages of the website


  Scenario Outline: Verify Header and Footer on homepage/contact/search page
    Given I am on "<page>"
    And I should see the link "Log in" in the "header" region
    And I should see the link "English" in the "header" region
    And I should see the link "Spanish" in the "header" region
    And I should see the button "Search" in the "header" region
    And I should see the link "Home" in the "header" region
    And I should see the link "Article" in the "header" region
    And I should see the link "Recipes" in the "header" region
    And I should see "Umami Food Magazine" in the "footer" region
    And I should see text matching "Skills and know-how. Magazine exclusive articles"
    Examples:
      | page     |
      | /        |
      | /contact |
      | /search  |


