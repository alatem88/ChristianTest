
$login_page = LoginPage.new
$registration_page = RegistrationUserPage.new

Given(/^I want to create a new account in My account$/) do
  visit url_visit
end


When(/^I click to Registrase$/) do
  $login_page.click_to_registrarse_checkout
  sleep 4
end
When(/^I go to registration page in the Home$/) do
     $login_page.visit_login_page
     sleep 2
      $login_page.click_to_registrarse_home
end

When(/^I write my personal data in the form$/) do
  $registration_page.form_registration_user
end
When(/^I click to button Completar registro$/) do
 $login_page.click_to_button_registration_save
 sleep 5
end
Given(/^I want to create a new account in Checkout$/) do
  visit url_visit
end

When(/^I select crear cuenta$/) do
  click_on 'Crear cuenta'
end

Then(/^I should see my account$/) do
	within 'div.navbar-header' do
   page.has_content?('Cerrar Sesión')
  end
end

Then(/^I should see error message$/) do
  sleep 10
  assert_text('Este valor no es válido.')
end

Given(/^I want to create a new user in checkout$/) do
  visit url_visit
end

Then(/^I go to the form of new user$/) do
  visit "#{url_visit}/account/create/"
end 

Then (/^I should the form of new addres$/) do
  sleep 9
  #assert_text('Dirección de envío')
end

