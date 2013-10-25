Given(/^I have stories titled "(.+)"$/) do |titles|
  titles.split(', ').each do |title|
    FactoryGirl.create(:story, behavior: title)
  end
end

When(/^I go to the list of stories$/) do
  visit stories_path
end

Then(/^I should see "(.*?)"$/) do |title|
 expect(page).to have_content title 
end

When(/^I delete "(.*?)"$/) do |title|
  step %{I click "Destroy"}
end

Then(/^I should should not see "(.*?)"$/) do |title|
  expect(page).should have_no_content(title)
end