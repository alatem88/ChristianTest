class LoginPage
  include Capybara::DSL

  #All objects of Login and Registration Page Alice

  def user_and_pass_data
    sleep 5
	  fill_in 'customer_login_email', with: $usr
    fill_in 'customer_login_password', with: $pas
    sleep 3
  end

  def click_to_button_login
   click_on 'iniciar sesión segura'
  end

  def visit_login_page
    find(:xpath, '/html/body/header/div/div[2]/div[1]/div[2]/a[1]').click
  end

 def click_to_registrarse_home
  sleep 3
  find(:xpath, '//*[@id="ngdialog1"]/div[2]/div[1]/div[2]/a').click   
          
end

def click_to_registrarse_checkout
  sleep 3
   @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "CL"
    click_on 'Crear cuenta'
    elsif @aux1 != "CL"
      find(:xpath, '//*[@id="ngdialog1"]/div[2]/div[1]/div[2]/a').click           
    end
end
 def click_to_button_registration_save
   click_on 'Completar registro'         
end                    

def expect_login_home
  sleep 3
  #within 'div.navbar-header' do
   page.has_content?('Cerrar Sesión')
 # end
end
end


