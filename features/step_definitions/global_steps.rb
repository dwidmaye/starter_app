When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^\"]*)"$/ do |button|      
  click_button(button)
end

When /^I click "([^\"]*)"$/ do |link|      
  click_link(link)
end