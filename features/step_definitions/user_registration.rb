Given(/^an unregistered user name "(.*?)"$/) do |user_name|
  visit("/")
  @user_name = user_name
  click_link("Sign Up")
end

When(/^Judy signs up for the site$/) do
  fill_in(:user_name, :with => @user_name)
  click_on("Create")
end

Then(/^she should have an account$/) do
  user = User.where(:name => @user_name).first
  expect(user).to be_valid
end

Then(/^it should say "(.*?)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end


Given(/^an unregistered user with no name$/) do
  visit("/")
  click_link("Sign Up")
end

When(/^the users tries to sign up for the site$/) do
  click_on("Create")
end

Then(/^they should not have an account$/) do
  num_users = User.count
  expect(num_users).to be(0)
end

Then(/^it should give an error that says "(.*?)"$/) do |error_message|
  expect(page).to have_content(error_message)
end
