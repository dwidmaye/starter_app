Given(/^I am on the new story page$/) do
  visit new_story_path
end

When(/^I enter the story details$/) do
  step %{I fill in "In order to" with "foo"}
  step %{I fill in "As a" with "bar"}
  step %{I fill in "I want to" with "xyz"}
end

When(/^I save the story$/) do
  step %{I press "Save Story"}
end
