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

Given(/^"(.*?)" has BV "(.*?)"$/) do |title, bv|
  FactoryGirl.create(:story,behavior: title, business_value: bv )
end

Given(/^"(.*?)" has CV "(.*?)"$/) do |title, cv|
  FactoryGirl.create(:story,behavior: title, complexity_value: cv )
end

When(/^I select "(.*?)" from "(.*?)"$/) do |option, name|
  select(option, :from => name)
end
