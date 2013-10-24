Given(/^a story exists$/) do
  FactoryGirl.create(:story)
end

Given(/^I am on the story edit screen$/) do
  story = Story.first
  visit edit_story_path(story)
end

Given(/^I add a tag to the story$/) do
  within '.edit_story' do
    step %{I fill in "Goal" with "foo"}
    step %{I fill in "Stakeholder" with "bar"}
    step %{I fill in "Behavior" with "xyz"}
    step %{I fill in "story_tag" with "myTag"}
  end
end

Given(/^I save the tag$/) do
  step %{I press "Submit"}
end

Then(/^I see that the story has a tag$/) do
  story = Story.first
  visit url_for(story)
end