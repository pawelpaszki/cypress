@contact-us @regression
Feature: WebdriverUniversity - Contact Us Page

  Background: Preconditions
    Given I navigate to the webdriver university homepage
    When I click on the contact us button

  Scenario: Valid Contact Us Form Submission
    And I type a first name
    And I type a last name
    And I type an email address
    And I type a comment
    And I click on the submit button
    Then I should be presented with a successful contact us submission message

  Scenario: Invalid Contact Us Form Submission
    And I type a first name
    And I type a last name
    And I type a comment
    And I click on the submit button
    Then I should be presented with a unsuccessful contact us submission message

  Scenario: Valid Contact Us Form Submission - Using specific data
    And I type a specific first name "Sarah"
    And I type a specific last name "Woods"
    And I type a specific email address "swoods@gmail.com"
    And I type a specific word "hello123" and number 6788 within the comment input area
    And I click on the submit button
    Then I should be presented with a successful contact us submission message

  @smoke
  Scenario Outline: Validate contact us page
    And I type a first name <firstName> and a last name '<lastName>'
    And I type an email address '<emailAddress>' and a comment '<comment>'
    And I click on the submit button
    Then I should be presented with header text '<message>'

    Examples:
      | firstName | lastName | emailAddress     | comment            | message                      |
      | John      | Johns    | johnj@gmail.com  | Hello how are you? | Thank You for your Message!  |
      | Peter     | Jones    | pjones@gmail.com | Hello ser          | Thank You for your Message!  |
      | John      | Doe      | john_doe         | Hello ser          | Error: Invalid email address |