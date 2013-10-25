Feature:
  In order to track stories by project
  As a user
  I want to add a project to a story

Scenario: Add project to story
  Given a story exists
  When I am on the story edit screen
  And I add a project to a story
  And I save the story
  Then the story should belong to the project