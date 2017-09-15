@auth
Feature: Auth screen

  @SEVERITY:blocker @firefox @chrome
  Scenario: Open auth page
    Given I dont have anything
    When  I open some web site
    And   I fill "some@gmail.com" in "E-mail"
    And   I fill "qwerty" in "Password"
    And   I press "Log in" button
    Then  I see "Welcome" in the results
    And   I make screenshot