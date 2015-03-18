Feature: Innovation

    @submitting_innovation @regression @ignore
    Scenario: To verify, as user I am able to submit the innovation
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   And i login to the application if user is not logged in
	   And i click on Submit Innovations
	   And i complete the inventory innovation process
