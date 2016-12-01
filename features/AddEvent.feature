Feature: User can manually add event
 
Scenario: Add an event
  Given I am on the RideMe event page 
  When I follow "New Event"
  Then I should be on the Events page
  When I fill in "Date" with "12/01/2016"
  And I fill in "GPS" with "32.00"
  And I fill in "Location" with "River Hills Mall"
  And I fill in "Meet at" with "2"
  And I fill in "Destination" with "Mall of America"
  And I fill in "Can hold" with "4"
  And I select "Yes" from "One way trip"
  And I fill in "Get here by" with "1"
  And I fill in "Comment" with "Come through!"
  And I press "Submit"
  Then I should be on the RideMe event page
  And I should see "ID"
