Given(/^I am on the show story page$/) do
  story = FactoryGirl.create(:story)
  visit story_path(story)
end

When(/^I click on 'Add Comment' button$/) do
  step %{I press "Add Comment"}
end

When(/^I see a textarea field$/) do

end

When(/^I write some text in textarea field$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I save the comment$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the added comment to story on same page\.$/) do
  pending # express the regexp above with the code you wish you had
end