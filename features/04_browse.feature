@regression
Feature: Browse

    Scenario: To verify user able see the 'Innovation Inventory' anonymously

	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i click on Browse button
	   Then i should see innovations

    @ignore
    Scenario: To verify user able see the 'Innovation Inventory' while signed in
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   And i login into the application
	   When i click on Browse button
	   Then i should see innovations


    Scenario: To verify user able search an existing innovation anonymously
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i click on Browse button
	   And i execute a search as "Virtuwell"
	   Then i should see innovations "Virtuwell"


    Scenario: To verify user able search an existing innovation while signed in
	   Given i'm on Global Lab Homepage
	   And i login to the application if user is not logged in
	   When i click on Browse button
	   And i execute a search as "Virtuwell"
	   Then i should see innovations "Virtuwell"


    Scenario: To verify 'My Saved Innovations' option is only available while signed in
	   Given i'm on Global Lab Homepage
	   And i login to the application if user is not logged in
	   When i click on Browse button
	   Then i should see "My Saved Innovations"


    Scenario: To verify 'My Saved Innovations' option is not available anonymously
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i click on Browse button
	   Then i should not see "My Saved Innovations"


    Scenario: To verify while selecting 'My Saved Innovations' filter
	   Given i'm on Global Lab Homepage
	   And i login to the application if user is not logged in
	   When i click on Browse button
	   And check my saved innovations
	   Then i should see only saved innovations displayed

    @innovation_present
    Scenario: To verify user can view detail of Innovation
	   Given i'm on Global Lab Homepage
	   And i login to the application if user is not logged in
	   When i click on Browse button
	   And i click on Innovations
	   Then i should see "Introduction"
	   And i should see "Snapshot"
	   And i should see "Detail"
	   And i should see "Resources"