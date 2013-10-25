Given(/^I am on the root path$/) do
  visit root_path
end

Then(/^I should see the project index page$/) do
   expect(page).to have_content "Listing projects"
end