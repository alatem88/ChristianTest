$home_page = HomePage.new
$login_page = LoginPage.new
$cart_page = CartPage.new

Given(/^I want to login in my account$/) do
true
end

Then(/^I go to the home page$/) do
 $home_page.url_home
end

Then(/^I go to Login Account$/) do
   $login_page.visit_login_page
end

Then(/^I enter my user and password$/) do
  $login_page.user_and_pass_data
end

Then(/^I click to button Iniciar Sesion$/) do
  $login_page.click_to_button_login
end

Then(/^I should be the home page$/) do
  $login_page.expect_login_home
end

Given(/^I want to login in the checkout$/) do
  $home_page.url_home
end

When(/^I go to the checkout for login$/) do
   true
end

Then(/^I should see the apartad payment methods$/) do
 true
end