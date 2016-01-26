class CheckoutPage
	  include Capybara::DSL

#All objects of Checkout Page Alice

def click_finalizar_compra_button
click_on 'Finalizar Compra'
end


def button_disable_with_colpatria_or_credit_card
@button = execute_script("var buttonDisable = document.getElementsByClassName('btn btn-lg btn-block disabled-btn');
return buttonDisable.length");
	if @button == 1
		puts 'si bloquea el button con Colpatria'
	end
end


def link_change_address_checkout
	sleep 5
	first("a", :text => "Cambiar").click	
end

end