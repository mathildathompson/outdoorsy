# Given(/^I have already registered as "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

# Given(/^I am logged in as "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I add a comment "(.*?)"$/) do |arg1|
  fill_in 'comment[body]', :with => arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^a comment should be created$/) do
   assert_equal 1, Comment.count
end