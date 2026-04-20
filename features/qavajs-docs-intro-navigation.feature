Feature: QavaJS documentation navigation and Steps dropdown (v2)
  As a user of QavaJS documentation
  I want to navigate to "What's new in v2" and verify the "Steps" dropdown package list
  So that updated information and step packages are reliably accessible

  Background:
    Given I open url "https://qavajs.github.io/docs/intro"

  Scenario: Navigate to "What's new in v2" from the Intro page
    Then I expect element "link=What's new in v2" to be displayed
    When I click "link=What's new in v2"
    Then I expect page title to contain "What's new in v2"
    And I expect element "css=h1" to have text "What's new in v2"


  Scenario: Open "Steps" dropdown and display the packages list
    Then I expect element "link=Steps" to be displayed
    When I click "link=Steps"
    Then I expect element ".dropdown__menu" to be displayed
    And I expect "$$(\".dropdown__menu .dropdown__link\")" to have length "6"


  Scenario Outline: Steps dropdown contains expected package "<Package>"
    When I click "link=Steps"
    Then I expect element "link=<Package>" to be displayed

    Examples:
      | Package     |
      | Playwright  |
      | WebdriverIO |
      | API         |
      | Database    |
      | Filesystem  |
      | Memory      |


  Scenario: Negative - "What's new in v2" link is missing on Intro page
    Then I expect element "link=What's new in v2" to be displayed


  Scenario: Negative - "What's new in v2" navigation is broken
    When I click "link=What's new in v2"
    Then I expect element "css=h1" to have text "What's new in v2"


  Scenario: Negative - "Steps" dropdown is missing or does not open
    Then I expect element "link=Steps" to be displayed
    When I click "link=Steps"
    Then I expect element ".dropdown__menu" to be displayed


  Scenario Outline: Negative - Steps dropdown package list is incomplete (missing "<Package>")
    When I click "link=Steps"
    Then I expect element "link=<Package>" to be displayed

    Examples:
      | Package     |
      | Playwright  |
      | WebdriverIO |
      | API         |
      | Database    |
      | Filesystem  |
      | Memory      |