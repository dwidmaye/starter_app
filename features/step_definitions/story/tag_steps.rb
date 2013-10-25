Given(/^a story exists$/) do
  FactoryGirl.create(:story)
end

Given(/^I am on the story edit screen$/) do
  visit edit_story_path(Story.first)
end

Given(/^I add a tag to the story$/) do
  within '.edit_story' do
    step %{I fill in "In order to" with "foo"}
    step %{I fill in "As a" with "bar"}
    step %{I fill in "I want to" with "xyz"}
    step %{I fill in "story_tag" with "myTag"}
    step %{I select "Project" from "Project"}
  end
end

Given(/^I save the tag$/) do
  step %{I press "Save Story"}
end

Then(/^I see that the story has a tag$/) do
  story = Story.first
  visit url_for(story)
end
