@regression @challenge
Feature: Challenge

  Scenario: Deleting the added challenge
    Given i'm deleting all added challenge

  Scenario: Add a challenge
    Given i'm on admin page
    And i click on ADD_CHALLENGE
    When i enter the challenge name and select a date
    And i click on SAVE_CHALLENGE
    Then i should see "TestChallenge"

  @challenge1
  Scenario: Challenges: Add an challenge: Save and continue editing
    Given i'm on admin page
    And i click on ADD_CHALLENGE
    When i enter the challenge name and select a date
    And i click on SAVE_CONTINUE_CHALLENGE
    Then i should be able to edit the same challenge

  Scenario: Deleting the added challenge
    Given i'm deleting all added challenge

  @challenge1
  Scenario: Challenges: Add an challenge:  Save and add another
    Given i'm on admin page
    And i click on ADD_CHALLENGE
    When i enter the challenge name and select a date
    And i click on SAVE_ADD_ANOTHER
    Then i should see "Add challenge"

  Scenario: Challenges: Add an challenge:  Delete
    Given i'm on admin page
    And i click on ADD_CHALLENGE
    When i enter the challenge name and select a date
    And i click on SAVE_CONTINUE_CHALLENGE
    And i click on DELETE_CHALLENGE
    Then i should see "Are you sure?"

  Scenario: Challenge: Add an group item: error
    Given i'm on admin page
    And i click on ADD_CHALLENGE
    When i click on SAVE_CHALLENGE
    Then i should see "This field is required."
