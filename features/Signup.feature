Feature: User authentication
  As a user
  In order to access the website content
  I need to sign up to the website
 
Scenario: User sign up
  Given I am on the RideMe home page 
  When I follow "Sign Up"
  And I fill in "First name" with "Jeremy"
  And I fill in "Middle name" with "S"
  And I fill in "Last name" with "Hunt"
  And I fill in "Email" with "jeremy.hunt@gmail.com"
  And I fill in "Password" with "jeremy"
  And I fill in "Password confirmation" with "jeremy"
  And I press "Sign up"
  And I should see "Life's a Journey, enjoy the Ride"
  
  