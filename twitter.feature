Feature: Post a Twitter message
  Scenario: Configure aliases and input speed
    When I set the alias mappings
      | Username | .js-username-field |
      | Password | .js-password-field |
      | Log in | button.submit |
      | Tweet box | tweet-box-home-timeline |
      | Tweet | .js-tweet-btn |
    And I set the default keystroke delay to "0" milliseconds

  Scenario: Log In
    Given I open the page "https://twitter.com/login"
    And I wait "30" seconds for the "Username" textbox to be displayed
    And I populate the "Username" textbox thing with "your_username"
    And I populate the "Password" textbox thing with "your_password"
    And I click the "Log in" button

  Scenario: Send Tweet
    Then I populate the "Tweet box" textbox with "This is a tweet"
    And I click the "Tweet" button
