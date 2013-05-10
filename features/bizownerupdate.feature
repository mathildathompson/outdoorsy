Feature: Business owner can update his listing

	As a business owner
	I want to update my business listing

	Background: 
	Given I am on the business' profile page

	Scenario: A business owner can update his listing name
	Given I edit my business name
	Then I should see my new business name through Ajax

	Scenario: A business owner can update phone number
	Given I edit my phone number
	Then I should see my new phone number through Ajax

	Scenario: A business owner can update email
	Given I edit my email
	Then I should see my new email through Ajax

	Scenario: A business owner can update address
	Given I edit my address
	Then I should see my new address through Ajax


