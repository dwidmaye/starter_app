Feature: 
  In order to view an overview of stories
  As a user
  I want to see a list of stories

Scenario:
  Given I have stories titled "Story1", "Story2"
  When I go to the list of stories
    Then I should see "Story1"
    And I should see "Story2"

#Scenario:
#  Given I have stories titled "Story1", "Story2"
#  When I go to the list of stories
#    And I delete "Story1"
#    Then I should should not see "Story1"