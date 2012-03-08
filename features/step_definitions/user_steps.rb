Given /^there is a user "([^"]*)"$/ do |email|
  Factory :user, email: email
end

Given /^I am signed in$/ do
  step 'I am signed in as "jeff@dickey.xxx"'
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  step "there is a user \"#{email}\""
  visit '/'
  step 'I follow "Sign in"'
  fill_in "user_email", with: email
  fill_in "user_password", with: 'password'
  click_button "Sign in"
end

When /^I fill out the registration form as "([^"]*)"$/ do |email|
  fill_in "user_email", with: email
  fill_in "user_password", with: 'password'
  click_button "Register"
end

When /^I sign out$/ do
  visit '/users/sign_out'
end

Then /^I should be signed in as "([^"]*)"$/ do |email|
  page.should have_content "Sign out"
  page.should_not have_content "Sign in"
  page.should_not have_content "Register"
  page.should have_content email
end

Then /^I should not be signed in$/ do
  page.should_not have_content "Sign out"
  page.should have_content "Sign in"
  page.should have_content "Register"
end
