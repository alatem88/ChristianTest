class AddressForm
  include Capybara::DSL

#All methods of all forms of new address

$url=ENV['COUNTRY']

def form_country_select 
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
    form_address_mx
  elsif @aux == "CL"
    form_address_cl
  elsif @aux == "EC"
    form_address_ec
  elsif @aux == "CO"
    form_address_co
  elsif @aux == "PE"
   form_address_pe
  elsif @aux == "PA"
    form_address_pa    
  elsif  @aux == "VE"
    form_address_ve
  elsif @aux == "AR"
    form_address_ar    
  end

end

def link_agregar_address
 find(:link, 'Agregar dirección').click
end

def button_save_address(cba)   
  if cba == 0
    click_button('Continuar')
  end
  if cba == 1
   find(:xpath, '//*[@id="ngdialog1"]/div[2]/div[1]/div[2]/div[3]/div/a').click
 end
end

def link_delete_address
first("a", :text => "Eliminar").click
end

def success_delete_message
assert_text('Tu dirección fue eliminada exitosamente')
end

def form_address_mx
   
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '5555555555'
    fill_in 'address_address1', with: 'test'
    fill_in 'address_street_number', with: '12'
    fill_in 'address_address2', with: '24'
    fill_in 'address_postcode', with: '11550'
    sleep 2
   # assert_text('Mis direcciones')
end

def form_address_ec
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '7787876756'
    fill_in 'address_phone', with: '8786676775'
    fill_in 'address_address1', with: 'test 1'
    fill_in 'address_address2', with: 'test 2'
    sleep 2
    fill_in 'address_street_number', with: 'Edificio test'
    fill_in 'address_apartment', with: '56 '
    sleep 2 
    select 'PICHINCHA', :from => 'address_region'
    select 'QUITO', :from => 'address_municipality'
    sleep 1
    fill_in 'address_postcode', with: '100000'
    ##fill_in 'address_additional_information', 'This is a Test'
    sleep 5
end

def form_address_cl
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '7787876756'
    fill_in 'address_phone', with: '8786676775'
    fill_in 'address_address1', with: 'test 1'
    fill_in 'address_street_number', with: '45'
    fill_in 'address_apartment', with: '56 '
    #fill_in 'address_address2', with: 'test 2'
    sleep 2 
    select 'METROPOLITANA', :from => 'address_region'
    select 'SANTIAGO', :from => 'address_municipality'
    ##sleep 1
    ##fill_in 'address_additional_information', 'This is a Test'
    sleep 3
end

def form_address_co
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '5523432230'
    fill_in 'address_address1', with: 'test'
    fill_in 'address_neighborhood', with: 'test'
    select 'Bogota D.C', :from => 'address_region'
    select 'Bogota', :from => 'address_municipality'
    fill_in 'address_additional_information', with: 'test1234'
    sleep 2
   # assert_text('Mis direcciones')
end

def form_address_pa
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_address1', with: 'test'
    select 'Panama', :from => 'address_region'
    select 'Panama', :from => 'address_municipality'
    fill_in 'address_city', with: 'test'
    fill_in 'address_neighborhood', with: 'test'
    fill_in 'address_mobile_phone', with: '98765434'
    fill_in 'address_phone', with: '87654324'
    fill_in 'address_additional_information', with: 'TEST'
    sleep 2
   # assert_text('Mis direcciones')
end
def form_address_ve
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_phone', with: '8976 5435678'
    fill_in 'address_mobile_phone', with: '7654 3456789'
    fill_in 'address_address1', with: 'test'
    fill_in 'address_street_number', with: '45'
    fill_in 'address_apartment', with: '56 '
    select 'Distrito Capital', :from => 'address_region'
    select 'Libertador', :from => 'address_municipality'
    select 'Caracas', :from => 'address_city'
    fill_in 'address_neighborhood', with: 'test'
    fill_in 'address_additional_information', with: 'TEST'
    sleep 2
   # assert_text('Predeterminada')
end
def form_address_pe
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '987654324'
    fill_in 'address_phone', with: '987654567'
    select 'Casa', :from => 'address_dir_type'
    fill_in 'address_address1', with: 'test'
    fill_in 'address_lote', with: '34'
    fill_in 'address_depto', with: '45'
    fill_in 'address_urba', with: '56 '
    fill_in 'address_address2', with: 'test'
    select 'LIMA', :from => 'address_region'
    select 'LIMA', :from => 'address_municipality'
    select 'LA VICTORIA', :from => 'address_city'
    
    #fill_in 'address_additional_information', with: 'TEST'
    sleep 2
   # assert_text('Predeterminada')
end
def form_address_ar
    fill_in 'address_first_name', with: 'test'
    fill_in 'address_last_name', with: 'test'
    fill_in 'address_mobile_phone', with: '987654324'
    fill_in 'address_phone', with: '987654567'
   
    fill_in 'address_address1', with: 'test'
    fill_in 'address_street_number', with: '34'
    fill_in 'address_apartment', with: '45'
    fill_in 'address_postcode', with: '56 '
    select 'C.A. de Buenos Aires', :from => 'address_region'
    select 'C.A. de Buenos Aires', :from => 'address_municipality'
    fill_in 'address_additional_information', with: 'TEST'
    sleep 2
   # assert_text('Predeterminada')
end
end

