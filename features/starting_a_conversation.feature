Feature: Starting a conversation
  Begin at the beginning

  Scenario: Sunday isn't Friday
    Given my name is Dave
    When I visit the support link
    When I enter my name
    Then I should see the conversation page