require 'rubygems'
require 'selenium-webdriver'

Given("my name is Dave") do
  @me = 'Dave'
end

When("I visit the support link") do
  visit support_path
end

When("I enter my name") do
  fill_in 'Name', with: @me
end

Then("I should see the conversation page") do
  pending # Write code here that turns the phrase above into concrete actions
end
