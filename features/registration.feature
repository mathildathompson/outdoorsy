Feature: User sign up and registration

  As a punter
  I want to become a member so that I can explore outdoor events NYC and organise events with friends


  Scenario: A user signs up with valid information
    Given I am on the sign_up page
    When I sign up as a user with email "test@test.com"
    Then I should have an account


  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@test.com"
    When I login with email "test@test.com"
    Then I should see "Welcome Back"