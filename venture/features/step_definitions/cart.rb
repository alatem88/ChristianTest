$home_page = HomePage.new
$category_page = CategoryPage.new
$product_page = ProductPage.new
$cart_page = CartPage.new
$login_page = LoginPage.new
$payment_method = PaymentMethods.new
$checkout_page = CheckoutPage.new
$cart_page = CartPage.new
$product_page = ProductPage.new

Given(/^I want to change the quantity of item$/) do
  $home_page.url_home
end
When(/^I go to the cart$/) do
   $product_page.button_comprar_go_to_cart
end

When(/^I change quantity item$/) do
  # click quantity 2
 $cart_page.select_change_quantity
end
Given(/^I want to delete to items on cart$/) do
  $home_page.url_home
end

Then(/^I delete item$/) do
  # click delete item icon
 $cart_page.button_delete_item_cart
end
 
When(/^I add the "([^"]*)" cupon on cart$/) do |code_cupon|
  # click add cupon link
  $cart_page.add_coupon_cart(code_cupon)
  $cart_page.button_procesar_compra_cart
end
