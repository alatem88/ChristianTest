class ProductPage

include Capybara::DSL

#All objects of Product Page Alice
def button_comprar_go_to_cart

 click_button 'Comprar Ahora'
end
end