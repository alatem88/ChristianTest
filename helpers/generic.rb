require 'fileutils'
require 'yaml'


def timestamps
  (Time.now.to_f * 1000).to_i
end

def save_evidence(scenario)
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{ENV['CUCUMBER_MOBILE_EXECUTION']}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  screenshot_embed({:prefix=>evidence_dir, :name=>"#{timestamp}_#{scenario.feature.name}_#{scenario.name}_#{scenario.failed? ? 'Fail' : 'Pass'}.png"})
  rescue
    puts "Fail screenshot"
end

#function for evidence general
def save_evidence_execution
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{ENV['CUCUMBER_MOBILE_EXECUTION']}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  screenshot_embed({:prefix=>evidence_dir, :name=>"#{timestamp}_evidence.png"})
end

def logout_step
  touch("ImageView id:'abs__home'")
  scroll_down
  touch("* {text CONTAINS 'CERRAR SESIÓN'}")
  tap_when_element_exists("button index:1")
  sleep 5
 rescue
   puts "Logout fail"
end

def delete_car
true
end



def to_cart(cpn) # 1: con cupon  ---  0: sin cupon
  tap_when_element_exists("Button id:'shop'") ##text:'Agregar al carrito'")
  tap_when_element_exists("Button text:'Ir al carrito'")
  if cpn == 1
    cupon
  end
    tap_when_element_exists("Button text:'Comprar Ahora'")
end

def login_checkout
 sleep 2
    fill_in 'customer_login_email', with: $usr
    fill_in 'customer_login_password', with: $pas
  #  click_on 'iniciar sesión segura'
 rescue
  puts "Not login checkout"
end

def login_account
  visit url_visit
  visit "#{url_visit}/account/login"
  fill_in 'customer_login_email', with: $usr
  fill_in 'customer_login_password', with: $pas
  click_on 'iniciar sesión segura'
  assert_text('¡HOLA TEST!')
end

def cupon
  tap_when_element_exists("textview id:'tvCouponState'")
  enter_text("EditText id:'etCupon'",$cod_cupon)
  tap_when_element_exists("button text:'Aplicar'")
rescue
  puts 'cupon not found'
end

def change_date(indice, cadena )
  long_press_when_element_exists("numberPickerEditText index:#{indice}")
  keyboard_enter_text(cadena)
  press_user_action_button
  tap_when_element_exists("button text:'OK'")
end
def change_quantity_item
  press_back_button
  tap_when_element_exists("Button id:'changequantity_button'")
  tap_when_element_exists("android.widget.CheckBox index:0")
  tap_when_element_exists("Button text:'Comprar Ahora'")
rescue
  puts 'Not changed quantity item on cart'
end



  

