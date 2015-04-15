@adopter @regression
Feature: Adopter

    @delete
    Scenario: Delete Existing Adopter added
	   Given i'm deleting all added adopter

    Scenario: Adopter Interview: Add new
	   Given i'm on admin page
	   When i click on ADOPTER_ADD
	   And i select a date from calendar
	   And i select from drop down as "Virtuwell"
	   And i select from drop down for adopter "dan.iterationgroup.com@example.com"
	   Then I save the adopter


    Scenario: Delete Existing Adopter added
	   Given i'm deleting all added adopter

    Scenario: Adopter Interview: Add new Save and add another
	   Given i'm on admin page
	   When i click on ADOPTER_ADD
	   And i select a date from calendar
	   And i select from drop down as "Virtuwell"
	   And i select from drop down for adopter "dan.iterationgroup.com@example.com"
	   Then I save the adopter with value "Save and add another"

    Scenario: Adopter Interview: Add new Save and continue editing
	   Given i'm on admin page
	   When i click on ADOPTER_ADD
	   And i select a date from calendar
	   And i select from drop down as "Virtuwell"
	   And i select from drop down for adopter "dan.iterationgroup.com@example.com"
	   Then I save the adopter with value "Save and continue editing"

    Scenario: Delete Existing Adopter added
	   Given i'm deleting all added adopter

    Scenario: Adopter Interview: Add new: delete
	   Given i'm on admin page
	   When i click on ADOPTER_ADD
	   And i select a date from calendar
	   And i select from drop down as "Virtuwell"
	   And i select from drop down for adopter "dan.iterationgroup.com@example.com"
	   Then I save the adopter with value "Save and continue editing"
	   And i click on DELETE_ADOPTER
	   Then i should see "Yes, I'm sure"
