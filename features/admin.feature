Feature: Admin
    @admin1
    Scenario: Groups: Add an group item
	   Given i'm on admin page
	   When i add a group
	   Then added group should be saved