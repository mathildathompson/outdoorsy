Feature: Comment
	
	As any user 
	I should be able to leave a comment

	# Background:
	# 	Given I have already registered as "dan@dangarland.co.uk"

	@wip @javascript
	Scenario: A user leaves a comment
		Given I am on the homepage
		When I add a comment "bla"
		Then I should see "bla" 
		And a comment should be created