Feature: QavaJS Docs Intro navigation - Practical Task 1.1
  As a user of QavaJS documentation
  I want to open "What's new in v2" and review available step packages
  So that I can reliably access up-to-date information and package listings

  Background:
    Given I open 'https://qavajs.github.io/docs/intro' url

  Scenario: "What's new in v2" link is visible in docs sidebar
    Then I expect 'Qava Docs Intro Page > WhatsNewInV2Link' to be displayed


  Scenario: Navigate to "What's new in v2" and verify page title and heading
    When I click 'Qava Docs Intro Page > WhatsNewInV2Link'
    Then I expect page title to contain "What's new in v2"
    And I expect 'Qava Docs WhatsNewInV2 Page > Heading' to have text "What's new in v2"


  Scenario: Top navigation contains "Steps" dropdown toggle
    Then I expect 'Qava Docs Intro Page > StepsDropdownToggle' to be displayed


  Scenario: Open "Steps" dropdown and verify it shows 6 package links
    When I click 'Qava Docs Intro Page > StepsDropdownToggle'
    Then I expect 'Qava Docs Intro Page > StepsDropdownMenu' to be displayed
    And I expect 'Qava Docs Intro Page > StepsDropdownLinks' to have length "6"


  Scenario Outline: Steps dropdown contains package "<Package>"
    When I click 'Qava Docs Intro Page > StepsDropdownToggle'
    Then I expect element "nav.navbar .navbar__item.dropdown:has(a:has-text(\"Steps\")) .dropdown__menu .dropdown__link:has-text(\"<Package>\")" to be displayed

    Examples:
      | Package     |
      | Playwright  |
      | WebdriverIO |
      | API         |
      | Database    |
      | Filesystem  |
      | Memory      |
