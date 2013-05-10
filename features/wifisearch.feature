Feature: User can search for wifi spots

	As a user
	I want to view wifi spots near me on a map

	Background: 
	Given I see a map on the page 

	Scenario: A user can see wifi spots in Manhattan on a map
	Given I am on the root main page
	Then I should see wifi locations in NYC

	Scenario: A user can see wifi spots near an entered zipcode
	Given a user enters a zipcode on the mainpage
	When I press enter after entering a zipcode
	Then I should see the map update with wifi locations around the zipcode 

