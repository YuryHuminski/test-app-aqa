Feature: QavaJS Docs Intro navigation - "What's new in v2" and "Steps" packages
  As a user of QavaJS documentation
  I want to open "What's new in v2" and review available step packages
  So that I can reliably access up-to-date information and package listings

  Background:
    Given I open 'https://qavajs.github.io/docs/intro' url

  Scenario: Guard (negative) - Intro page contains "What's new in v2" link
    Then I expect element "link=What's new in v2" to be displayed


  Scenario: Navigate to "What's new in v2" and verify page title and heading
    When I click "link=What's new in v2"
    Then I expect page title to contain "What's new in v2"
    And I expect element "css=h1" to have text "What's new in v2"


  Scenario: Guard (negative) - Top navigation contains "Steps" dropdown
    Then I expect element "link=Steps" to be displayed


  Scenario: Open "Steps" dropdown and display the full list of packages
    When I click "link=Steps"
    Then I expect element "css=.dropdown__menu" to be displayed
    And I expect "$$(\".dropdown__menu .dropdown__link\")" to have length "6"


  Scenario Outline: Steps dropdown contains package "<Package>"
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