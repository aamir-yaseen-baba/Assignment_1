Feature: User can contact the site admins through Contact us form both in English and Spanish

  Scenario Outline:
    Given I am on the homepage
    And I follow "<language>"
    And I follow "<contact us>" in the "footer" region
    And I fill in "name" with "aamir"
    And I fill in "mail" with "aamir@yopmail.com"
    And I fill in "subject[0][value]" with "Subject"
    And I fill in "message[0][value]" with "Message"
    When I press the "<button>" button
    Then I should see the success message "<message>"
    Examples:
      | language | contact us | button | message |
      | English | Contact     | op           | Your message has been sent.|
      | Spanish | Contacto    |    op        | Your message has been sent.|

