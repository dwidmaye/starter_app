Given(/^I am on the new project page$/) do
  visit new_project_path
end

When(/^I enter the project details$/) do
  step %{I fill in "Name" with "foo"}
end

When(/^I save the project$/) do
  step %{I press "Create Project"}
end

Given(/^a project exists with name: "(.*?)"$/) do |name|
  FactoryGirl.create(:project, name: name)
end