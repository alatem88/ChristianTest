$pais = ENV['COUNTRY']
$home_page = HomePage.new
$category_page = CategoryPage.new
$product_page = ProductPage.new
$cart_page = CartPage.new
$login_page = LoginPage.new
$shipping_option_page = ShippingOption.new
$payment_method = PaymentMethods.new
$checkout_page = CheckoutPage.new
$success_page = SuccessPage.new

Given(/^I want to purchase$/) do
visit url_visit
end
When(/^I search a product$/) do 
$home_page.search_product
$home_page.click_search_product_button
end
When(/^I select the item for purchase$/) do
sleep 5
$category_page.select_to_product_of_search
end
When(/^I go to the cart with the item$/) do
$product_page.button_comprar_go_to_cart
sleep 2
$cart_page.button_procesar_compra_cart
end
When(/^I Login in the checkout$/) do
$login_page.user_and_pass_data
$login_page.click_to_button_login
end
When(/^I select the shipping options$/) do
$shipping_option_page.shipping_option_page
end

When(/^I purchase the item$/) do
sleep 5
$checkout_page.click_finalizar_compra_button
end
Then(/^I should see a thank you message$/) do
$success_page.expect_success_message
end
Then(/^I should see a bank page$/) do
sleep 6
find(:xpath, '//*[@id="tarjetas"]/tbody/tr[2]/td[2]/table/tbody/tr[1]/td')
delete_car
end
#---> Payment Methods MX
#---> Cash on delivery is a global payment method
When(/^I choose the Cash on delivery payment method$/) do
sleep 10
$payment_method.method_cod
end
When(/^I choose the Deposit Bank payment method$/) do
$payment_method.method_bank_deposit_mx
end
Then(/^I choose the PayPal payment method$/) do
$payment_method.method_paypal_mx
end
Then(/^I choose the Oxxo payment method$/) do
$payment_method.method_oxxo_mx
end
#---> Select to credit card by country
Then(/^I choose the Credit Card payment method$/) do
$payment_method.credit_card_country
end
#---> Payment Methods CO
Then(/^I choose the Efecty payment method$/) do
 $payment_method.efecty_payment_method_co
end

Then(/^I choose the Colpatria payment method$/) do
   $payment_method.colpatria_payment_method_co
end
Then(/^I choose the Consignación Bancaria payment method$/) do
   $payment_method.consignacion_payment_method_co
end
#---> Payment Methods PE
Then(/^I choose the BBVA Continental payment method$/) do
   $payment_method.bbva_method
end

Then(/^I choose the Banco de Crédito payment method$/) do
 $payment_method.banco_credito_method
end

Then(/^I should see a error message$/) do
   $payment_method.pending
end

Then(/^I choose the Pago Efectivo payment method$/) do
  $payment_method.pago_efectivo_method
end
#---> Payment Methods PA
When(/^I choose the credit card on delivery$/) do
  $payment_method.credit_card_on_delivery
end

When(/^I choose the Venta Corporativa$/) do
 $payment_method.venta_corpo_pa
end
#---> Payment Methods EC

When(/^I choose the Deposit Bank or transfer payment method$/) do
  $payment_method.deposit_bank
end

When(/^I choose the payclub payment method$/) do
  $payment_method.tc_payment_method_ec
end

#--->CL
Then(/^I choose the WebPay payment method$/) do 
  sleep 2
$payment_method.method_webpay_cl 
end
#------> VE
When(/^I choose the novared payment method$/) do
  $payment_method.method_novared
end
When(/^I choose the BBVA payment method$/) do
  $payment_method.method_bbva
end

#--->Messages confirmation

Then(/^I should see the button Finalizar compra block$/)do
$checkout_page.button_disable_with_colpatria_or_credit_card
end
Then(/^I should see the PayPal website$/)do
$success_page.paypal_home_page
end

Then(/^I should see an error message$/) do
$success_page.expect_error_message
end

Then(/^I should see the Payclub website$/) do
  $success_page.payclub_home_page
end

Then(/^I should see the WebPay website$/) do
  $success_page.webpay_home_page
end

Then(/^I should see the novared website$/) do
  true
end


