Feature:
  In order to organize stories
  As a user
  I want to add a tag to a story

Background:
  Given a story exists
  And I am on the story edit screen

Scenario: Add tag to story
  And I add a tag to the story
  And I save the tag
  Then I see that the story has a tag

