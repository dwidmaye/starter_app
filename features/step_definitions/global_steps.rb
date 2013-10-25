When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^\"]*)"$/ do |button|      
  click_button(button)
end

When /^I click "([^\"]*)"$/ do |link|      
  click_link(link)
end

Then(/^I should see a success message$/) do
  expect(page).to have_content 'success'
end