Feature:
  In order to group stories
  As a user
  I want to create a project

Scenario: Create a project
  Given I am on the new project page
  When I enter the project details
  And I save the project
  Then I should see a success message