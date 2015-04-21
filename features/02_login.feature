@login @regression
Feature: Login

    @validlogin
    Scenario: To verify, as user I am able to sign in with valid credentials

	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application
	   Then i should see the user logged

    @invalidlogin
    Scenario: To verify, as user I am unable to sign in without valid credentials

	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application with username as "testing@gmail.com" and password as "12345"
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptylogin
    Scenario: To verify, as user I am unable to sign in with empty credentials

	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application with username as "" and password as ""
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptypassword
    Scenario: To verify, as user I am unable to sign in with empty password
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application with username as "test@gmail.com" and password as ""
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptyusername
    Scenario: To verify, as user I am unable to sign in with empty email address
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application with username as "" and password as "123456"
	   Then i should see the validation message "Incorrect Email or Password!"

    @cancel_login
    Scenario: To verify, as user I am able to cancel the sign in
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   And i click on Sign in button
	   When i click on cancel button
	   Then i should not see the login module
	   And i should see "Sign in"

    @logout
    Scenario: To verify, as user I am able to Log Out
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i login into the application
	   Then i should see the user logged
	   And i logout from the application
	   And i should see "Sign in"

    @browse_inventory
    Scenario: To verify, user able to access 'Browse' option without Sign In
	   Given i'm on Global Lab Homepage
	   When i click on Browse button
	   Then i should see "Innovation Inventory"

    @submit_innovation
    Scenario:To verify, while clicking on 'Submit' option and Sign In
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   When i click on Submit Button
	   Then i should see "Login"
	   And i enter valid credentials
	   Then i should not see the login module
	   Then i should see "Submit your innovation."

    @About
    Scenario: To verify, user able to access 'About' option without Sign In
	   Given i'm on Global Lab Homepage
	   And i logout from the application if user is logged in
	   And i should see "Sign in"
	   When i click on ABOUT_BUTTON
	   Then i should see "Welcome to the Global Lab for Health"

    Scenario: To verify, while sign in 'My Saved Innovations' filter option is shown in Browse screen
	   Given i'm on Global Lab Homepage
	   And i login to the application if user is not logged in
	   When i click on Browse button
	   Then i should see "My Saved Innovations"



