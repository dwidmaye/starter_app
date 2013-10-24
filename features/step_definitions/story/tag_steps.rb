Given(/^a story exists$/) do
  story = FactoryGirl.create(:story)
end

Given(/^I am on the story edit screen$/) do
  current_path '/stories/1'
end

Given(/^I add a tag to the story$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I save the tag$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see that the story has a tag$/) do
  pending # express the regexp above with the code you wish you had
end