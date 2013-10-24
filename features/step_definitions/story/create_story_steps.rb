Given(/^I am on the new story page$/) do
  visit new_story_path
end

When(/^I enter the story details$/) do
  step %{I fill in "Goal" with "foo"}
  step %{I fill in "Stakeholder" with "bar"}
  step %{I fill in "Behavior" with "xyz"}
end

When(/^I save the story$/) do
  pending #step %{I press "Submit"}
end


Then(/^I should see a "(.*?)" message$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end