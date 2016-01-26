class ShippingOption
 
  include Capybara::DSL

  
#All objects of Shipping Option Page Alice

def shipping_option_page
 @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
    click_button('Continuar')
   elsif @aux1 == "CO"
    click_button('Continuar')
  end
    puts 'Not MX'
  end
end