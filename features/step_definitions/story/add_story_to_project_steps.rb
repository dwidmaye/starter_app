When(/^I add a project to a story$/) do
  project = FactoryGirl.create(:project)
  step %{I select "project name1" from "Project"}
end

Then(/^the story should belong to the project$/) do
  expect(page).to have_content 'project name'
end