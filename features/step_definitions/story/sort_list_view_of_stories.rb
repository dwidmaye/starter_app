Then(/^I should see the "(.*?)" before the "(.*?)"$/) do |earlier_content, later_content|
  # pending # express the regexp above with the code you wish you had
  page.should have_content(earlier_content)
  page.should have_content(later_content)
  
  (page.body.index(earlier_content) < page.body.index(later_content)).should be_true
  
end