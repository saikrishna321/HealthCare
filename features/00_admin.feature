@regression
Feature: Admin

    @admin1
    Scenario: Groups: Add an group item
	   Given i'm on admin page
	   When i add a group
	   And i click on Save
	   Then added group should be saved

    @admin2
    Scenario: Add an group item with multiple permanent links
	   Given i'm on admin page
	   When i add a group with multiple permanent links
	   Then added group should be saved

    @admin3
    Scenario: Groups: Add an group item: Save and continue editing
	   Given i'm on admin page
	   When i add a group
	   And i click on SAVE_CONTINUE_EDIT
	   Then i should see element DELETE

    @admin3
    Scenario: Groups: Add an group item: Save and add another
	   Given i'm on admin page
	   When i add a group
	   And i click on SAVE_ANOTHER
	   Then i should see element ADD_GROUP_HEADER

    @admin4
    Scenario: Groups: Add an group item: Delete
	   Given i'm on admin page
	   When i add a group
	   And i click on SAVE_CONTINUE_EDIT
	   Then i must be able to delete the created group

    @admin5
    Scenario: Groups: Add an group item: History
	   Given i'm on admin page
	   When i add a group
	   And i click on SAVE_CONTINUE_EDIT
	   And i click on HISTORY
	   Then i should see the item added in history

    @admin6
    Scenario: Groups: Edit/Modify an group item
	   Given i'm on admin page
	   When i click on GROUPS
	   And i modify the existing group
	   Then i should see the group name modified

    @admin7
    Scenario: Groups: Deleting multiple group items
	   Given i'm on admin page
	   When i click on GROUPS
	   And i select multiple groups with index "3"
	   And i delete the selected groups