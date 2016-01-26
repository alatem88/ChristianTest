Feature: Registration
  As user I should be able to create a new account

@co @mx @ve @pe @cl @ar @ec @pa
Scenario: registration of new user in My account
  Given I want to create a new account in My account
  When I go to the home page
  And I go to registration page in the Home
  And I write my personal data in the form
  And I click to button Completar registro
  Then I should be the home page 

@co @mx @ve @pe @cl @ar @ec @pa
Scenario: registration of new user in checkout
  Given I want to create a new user in checkout
  When I go to the home page
  And I search a product
  And I select the item for purchase
  And I go to the cart with the item
  And I click to Registrase
  And I write my personal data in the form
  And I click to button Completar registro
  Then I should the form of new addres
  