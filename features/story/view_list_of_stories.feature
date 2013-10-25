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
#    Then I should not see "Story1"

Scenario:
  Given I have stories titled "Story1", "Story2"
  When I go to the list of stories
    And I click on the story title "Story1"
    Then I should see the edit page

Scenario:
  Given I have stories titled "Story1", "Story2"
  When I go to the list of stories
    And I click on the story title "Story1"
    Then I should see the edit page
    And when I change the title to "Story3"
    And I save the story
    Then I should see "Story3"