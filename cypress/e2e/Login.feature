@login @regression
Feature: webdriveruniversity - Login Page

  Scenario Outline: Validate valid and invalid login credentials
    Given I navigate to the webdriver university homepage
    When I click on the login portal button
    And I type a username <username>
    And I type a password <password>
    And I click on the login button
    Then I should be presented with an alert box which contains text '<expectedAlertText>'

    Examples: // required when using Scenario Outline
      | username  | password     | expectedAlertText    |
      | webdriver | webdriver123 | validation succeeded |
      | webdriver | Password123  | validation failed    |