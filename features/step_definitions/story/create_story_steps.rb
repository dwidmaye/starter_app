Given(/^I am on the new story page$/) do
  visit new_story_path
end

When(/^I enter the story details$/) do
  step %{I fill in "Goal" with "foo"}
  step %{I fill in "Stakeholder" with "bar"}
  step %{I fill in "Behavior" with "xyz"}
  step %{I select "Project" from "Project"}
end

When(/^I save the story$/) do
  step %{I press "Submit"}
end