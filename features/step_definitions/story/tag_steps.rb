Given(/^a story exists$/) do
  FactoryGirl.create(:story)
end

Given(/^I am on the story edit screen$/) do
  story = Story.first
  visit edit_story_path(story)
end

Given(/^I add a tag to the story$/) do
  within '.edit_story' do
    step %{I fill in "story_tag" with "myTag"}
  end
end

Given(/^I save the tag$/) do
  step %{I press "Submit"}
end

Then(/^I see that the story has a tag$/) do
  pending # express the regexp above with the code you wish you had
end