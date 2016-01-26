Feature: Login
 User should be able to login to the website linio in the differents parts how My account and Checkout.

@co @mx @ve @pe @pa @cl @ar @ec
Scenario: Login My account
   Given I want to login in my account
   Then I go to the home page
   And I go to Login Account
   And I enter my user and password
   And I click to button Iniciar Sesion
   Then I should be the home page

@co @mx @ve @pe @pa @cl @ar @ec
Scenario: Login Checkout
   Given I want to login in the checkout
   And I go to the home page
   When I search a product   
   And I select the item for purchase
   And I go to the cart with the item
   And I go to the checkout for login
   And I enter my user and password
   And I click to button Iniciar Sesion
   Then I should see the apartad payment methods


