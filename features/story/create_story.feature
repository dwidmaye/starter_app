Feature: 
	In order to create a story
	As a user
	I want to create story using gherkin style

Scenario: Create a story
	Given I am on the new story page
	When I enter the story details
	And I save the story
	Then I should see a "success" message
