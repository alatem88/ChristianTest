$address_form = AddressForm.new
$my_account_page = MyProfilePage.new
$home_page = HomePage.new
$login_page = LoginPage.new
$checkout_page = CheckoutPage.new
$success_page = SuccessPage.new

Given(/^I'm an user registered$/)do
  visit url_visit
end

When(/^I go to home page$/) do
  visit url_visit
end

When(/^I Login$/) do
  sleep 3
  $home_page.link_iniciar_sesion_home
  $login_page.user_and_pass_data
  $login_page.click_to_button_login
  
end
When(/^I go to my account$/) do
  $my_account_page.visit_my_account
  $my_account_page.my_address_option
  sleep 3
  #$address_form.link_agregar_address
end

When(/^I enter my address data$/) do
  $address_form.link_agregar_address
  $address_form.form_country_select

end

When(/^I save the information$/) do
   $address_form.button_save_address(0)
  sleep 2
end

Then(/^I should see a confirmation message$/) do
  sleep 2
  page.has_content?('Predeterminada')  
end
Given(/^I want to create a new addres from checkout$/) do
 visit url_visit
end

When(/^I click to Cambiar Link address$/) do
sleep 3
$checkout_page.link_change_address_checkout
#first("a", :text => "Cambiar").click
sleep 4
end

When(/^I add my new address$/) do
  $address_form.link_agregar_address

end

When(/^I save the information checkout$/) do
 $address_form.form_country_select
 $address_form.button_save_address(1)
 sleep 3
end

Then(/^I confirm the message in checkout$/) do
 true
end

Given(/^I want to delete my address$/) do
  visit url_visit
end

When(/^I click to delete address link$/) do
 $address_form.link_delete_address
end

Then(/^I should see a success message of addess deleted$/) do
 $address_form.success_delete_message
end
