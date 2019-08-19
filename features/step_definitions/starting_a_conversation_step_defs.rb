require 'rubygems'
require 'selenium-webdriver'

Given("my name is Dave") do
  @me = 'Dave'
end

When("I visit the support link") do
  visit support_path
end

When("I enter my name") do
  fill_in 'participant_name', with: @me
end

When("I click_on {string}") do |string|
  click_on string
end

Then("I should see the conversation page") do
  expect(page).to have_css '#message_content'
end

