Given(/^I am on the show story page$/) do
  story = FactoryGirl.create(:story)
  visit story_path(story)
end

When(/^I click on 'Add Comment' button$/) do
  step %{I press "Add Comment"}
end

When(/^I write some text in textarea field$/) do
  fill_in :comment_body, with: "some comment"
end

When(/^I save the comment$/) do
  step %{I press "Submit"}
end

Then(/^I see the added comment to story on same page\.$/) do
  page.should have_content("some comment")
end
