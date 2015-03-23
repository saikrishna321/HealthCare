@regression
Feature: Footer

    Scenario: Verify Terms and condition
	   Given i'm on Global Lab Homepage
	   When i click on Terms and condition
	   Then i should see "Terms of Use"


    Scenario: Verify Privacy
	   Given i'm on Global Lab Homepage
	   When i click on Privacy
	   Then i should see "Privacy"