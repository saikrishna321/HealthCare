Feature: Login

    @validlogin
    Scenario: To verify, as user I am able to sign in with valid credentials

	   Given i'm on Global Lab Homepage
	   When i login into the application
	   Then i should see the user logged

    @invalidlogin
    Scenario: To verify, as user I am unable to sign in without valid credentials

	   Given i'm on Global Lab Homepage
	   When i login into the application with username as "testing@gmail.com" and password as "12345"
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptylogin
    Scenario: To verify, as user I am unable to sign in with empty credentials

	   Given i'm on Global Lab Homepage
	   When i login into the application with username as "" and password as ""
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptypassword
    Scenario: To verify, as user I am unable to sign in with empty password
	   Given i'm on Global Lab Homepage
	   When i login into the application with username as "test@gmail.com" and password as ""
	   Then i should see the validation message "Incorrect Email or Password!"

    @emptyusername
    Scenario: To verify, as user I am unable to sign in with empty email address
	   Given i'm on Global Lab Homepage
	   When i login into the application with username as "" and password as "123456"
	   Then i should see the validation message "Incorrect Email or Password!"

    @cancel_login
    Scenario: To verify, as user I am able to cancel the sign in
	   Given i'm on Global Lab Homepage
	   And i click on Sign in button
	   When i click on cancel button
	   Then i should not see the login module
	   And i should see "Sign in"

	Scenario: To verify, as user I am able to Log Out
