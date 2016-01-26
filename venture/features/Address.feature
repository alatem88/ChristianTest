Feature: Add new addres
  As user registrered to Linio should be able to create addresses in my account, checkout and also delete my addresses

@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Add address in my account
  Given I'm an user registered
  When I go to home page
  And I Login
  And I go to my account
  And I enter my address data
  And I save the information
  Then I should see a confirmation message

@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Add address in checkout
  Given I want to create a new addres from checkout
  When I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I Login in the checkout
  And I select the shipping options
  And I click to Cambiar Link address
  And I add my new address
  And I save the information checkout
  Then I confirm the message in checkout

@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Delete Address 
  Given I want to delete my address
  When I go to home page
  And I Login
  And I go to my account 
  And I click to delete address link
  Then I should see a success message of addess deleted



