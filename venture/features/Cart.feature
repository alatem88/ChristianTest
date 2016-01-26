Feature: Registration
  As user I should be able to update and delete items on cart

#@ve @mx @pa @co @pe @cl @ec @ar
Scenario: change quantity items
 Given I want to change the quantity of item
 When I search a product
 And I select the item for purchase
 And I go to the cart
 Then I change quantity item

#@ve @mx @pa @co @pe @cl @ec @ar
Scenario: delete items
 Given I want to delete to items on cart
 When I search a product
 And I select the item for purchase
 And I go to the cart
 Then I delete item
 