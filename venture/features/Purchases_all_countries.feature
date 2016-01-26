Feature: Purchases
  User should be able to purchase a product using the available payment methods.

#----------> COD all countries
@co @mx @pe @pa @cl @ar @ec
Scenario: COD Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Cash on delivery payment method
  And I purchase the item
  Then I should see a thank you message

#@mx
Scenario:Deposit Bank Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Deposit Bank payment method
  And I purchase the item
  Then I should see a thank you message

#@mx
Scenario: PayPal Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the PayPal payment method
  And I purchase the item
  Then I should see the PayPal website

@mx
Scenario: Oxxo Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Oxxo payment method
  And I purchase the item
  Then I should see a thank you message

#----------> Credit Card all countries
@co @mx @ve @pe @pa @cl @ar
Scenario: Credit Card Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Credit Card payment method
  And I purchase the item
  And I should see an error message

#---------> COLOMBIA
@co
Scenario: Consignación Bancaria Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Consignación Bancaria payment method
  And I purchase the item
  Then I should see a thank you message

@co
Scenario: Efecty Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Efecty payment method
  And I purchase the item
  And I should see the PayPal website

@co
Scenario: Colpatria Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Colpatria payment method
  ##And I purchase the item
  Then I should see the button Finalizar compra block

#----------> PANAMA
#COD
#CCOD
#Venta Corporativa
#Credit Card
@pa
Scenario: CCOD Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the credit card on delivery
  And I purchase the item
  Then I should see a thank you message

@pa
Scenario: Venta Corporativa payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Venta Corporativa
  And I purchase the item
  Then I should see a thank you message

#----------> PERU
#BBVA Continental
#Banco de Crédito
#Pago Efectivo
#Pago con tarjeta de crédito Visa
#Pago contra entrega: Efectivo COD
#@pe
Scenario: BBVA Continental Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the BBVA Continental payment method
  And I purchase the item
  Then I should see a thank you message

@pe
Scenario: Banco de Crédito Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Banco de Crédito payment method
  And I purchase the item
  Then I should see a thank you message

@pe
Scenario: Pago Efectivo Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I choose the Pago Efectivo payment method
  And I purchase the item
  Then I should see a thank you message


#----------> CHILE
#WebPay
#Credit Card
#cod

@cl
Scenario: WebPay Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I choose the WebPay payment method
  And I purchase the item
  Then I should see the WebPay website


#----------> ECUADOR
#COD
#Deposit bank
#Credit Card
@ec @ve
Scenario: Deposit Bank or transfer Payment method
  Given I want to purchase 
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I choose the Deposit Bank or transfer payment method
  And I purchase the item
  Then I should see a thank you message

@ec
Scenario: Payclub Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I choose the payclub payment method
  And I purchase the item
  Then I should see the Payclub website

#-----------> VENEZUELA
#novared
#tarjeta de credito
#BBVA Provincial
#Depósito bancario o transferencia electrónica

@ve
Scenario: novared Payment method
  Given I want to purchase
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I choose the novared payment method
  And I purchase the item
  Then I should see the novared website
@ve
Scenario: BBVA Payment method
  Given I want to purchase 
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I choose the BBVA payment method
  And I purchase the item
  Then I should see a thank you message
