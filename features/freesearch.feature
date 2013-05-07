Feature: User can search for wifi spots

	As a user
	I want to view free events on a map

	Background: 
	Given I see a map on the page 

	Scenario: A user can see free events on a map
	Given I am on the root main page
	Then I should see free events on a map

	Scenario: A user can see free events near an entered zipcode
	Given a user enters a zipcode on the mainpage
	When I press enter after entering a zipcode
	Then I should see the map update with free events around the zipcode 

