class SuccessPage
	  include Capybara::DSL

#All objects of Success Page Alice
def expect_success_message
  sleep 15
  page.has_content?('¡Gracias, test!')
end

def expect_error_message
	 sleep 15
  page.has_content?('Lo sentimos')
end

def paypal_home_page
	  sleep 15
  page.has_content?('Cancelar y volver a LINIO.') 
end

def payclub_home_page
	  sleep 15
  find(:xpath, '//*[@id="tarjetas"]/tbody/tr[2]/td[2]/table/tbody/tr[1]/td')
end


def webpay_home_page
	  sleep 17
  find(:xpath, '//*[@id="wplogo"]')
end
end