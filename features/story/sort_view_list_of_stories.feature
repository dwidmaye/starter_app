Feature: 
  In order to decide the priority of listed stories
  As a user
  I want to see sorted stories on view list

Scenario:
  Given I have stories titled "Story1", "Story2"
    And "Story1" has BV "1"
	And "Story1" has CV "5"
    And "Story2" has BV "5"
	And "Story2" has CV "1"	
	When I go to the list of stories
  	And I click "Sort the Stories"
  	Then I should see the "Story2" before the "Story1"