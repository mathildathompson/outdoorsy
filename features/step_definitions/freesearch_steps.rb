Given(/^I see a map on the page$/) do
  page.find('a[href="https://maps.googleapis.com/maps/api/*"]')
end

Given(/^I am on the root main page$/) do
  visit '/root' 
end

Then(/^I should see free events in NYC on a map$/) do
  page.should have_content('marker')
end

Given(/^a user enters a zipcode on the mainpage$/) do
  fill_in('Zipcode', :with => '11001')
end

When(/^I press enter after entering a zipcode$/) do
  find('.myselector_name>input').native.send_keys(:return)
end

Then(/^I should see the map update with free events around the zipcode$/) do
  page.should have_content('marker')
end
