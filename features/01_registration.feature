Feature: Registration
    @register @regression
    Scenario: Complete Registration

	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   And i navigate to register page
	   When i enter first name as "Testing123"
	   And i enter last name as "TestingLst"
	   And i enter email id
	   And i enter phone number as "1234567890"
	   And i enter website
	   And i enter organisation as "Tests"
	   And i enter the password "Testing"
	   And i click on Register button
	   Then i should see "Testing123"
