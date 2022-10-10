Feature: Allows user to search for the items,users have ability to use advanced search as well

  Background:
    Given I am on the homepage

  @search
  Scenario Outline: Verify the normal and  search functionality in English and Spanish
    And I follow "<language>"
    And I fill in "edit-keys" with "chocolate"
    And I press "<search-button>"
    Then I should see "Dairy-free and delicious milk chocolate" in the "content" region
    Examples:
      | language |search-button|
      | English | Search       |
      | Spanish | Buscar       |


  @advancedSearch @api
  Scenario Outline: Verify the advance search functionality in English and Spanish
    And I am logged in as a user with the "administrator" role
    And I visit "<language>"
    And I press "<search-button>"
    And I expand "#edit-advanced" details element
    And I fill in "edit-or" with "chocolate"
    And I check the box "<language-checkbox>"
    And I press the "<advanced-search-button>" button
    Then I should see "<text>" in the "content" region
    Examples:
      | language |search-button|advanced-search-button| language-checkbox | text |
      | https://mywebsite.ddev.site/en| Search       | op | edit-language-en |Vegan chocolate and nut brownies|
      | https://mywebsite.ddev.site/es| Buscar       | op| edit-language-es |Bizcochos veganos de chocolate y nueces|

