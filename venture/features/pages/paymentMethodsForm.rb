class PaymentMethods
  include Capybara::DSL

#All Payment methods availables 

#-----------> MX
#Tarjeta de crédito o débito
#PayPal
#Pago en OXXO
#Tarjeta Linio-Scotiabank
#Pago en efectivo al recibir
#Depósito bancario
##COD
def method_cod
@aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
    page.has_content?('Pago en efectivo al recibir')
    find("span", :text => "Pago en efectivo al recibir").click
   elsif @aux1 == "PE"
     page.has_content?('Pago contra entrega: Efectivo')  
     find("span", :text => "Pago contra entrega: Efectivo").click
   elsif @aux1 == "PA"
    page.has_content?('Pago en efectivo al recibir')
    find("span", :text => "Pago en efectivo al recibir").click
  elsif @aux1 == "CL"
    page.has_content?('Pago en efectivo al recibir')
    find("span", :text => "Pago en efectivo al recibir").click
  elsif @aux1 == "CO"
    page.has_content?('Pago en efectivo al recibir')
    find("span", :text => "Pago en efectivo al recibir").click
end
end
  ##Bank Deposit
  def method_bank_deposit_mx
    page.has_content?('Depósito bancario')
    find("span", :text => "Depósito bancario").click
  end
  ##Paypal
  def method_paypal_mx
    page.has_content?('PayPal')
    find("span", :text => "PayPal").click
  end
  ##OXXO
  def method_oxxo_mx
    page.has_content?('Pago en OXXO')
    find("span", :text => "Pago en OXXO").click
  end
#-----------> CO
#Tarjeta Linio - Colpatria
#Tarjeta de crédito
#Efecty
#Consignación Bancaria
#Pago en efectivo al recibir
def colpatria_payment_method_co
page.has_content?('Tarjeta Linio - Colpatria')
find("span", :text => "Tarjeta Linio - Colpatria").click
sleep 2
    fill_in 'linio_discount_first_name', with: 'test'
    fill_in 'linio_discount_last_name', with: 'test'
    fill_in 'linio_discount_cc_number', with: '4111111111111111'
    select '10', :from => 'linio_discount_expiration_month'
    select '17', :from => 'linio_discount_expiration_year'
    fill_in 'linio_discount_cvv', with: '321'
end
def tc_payment_method_co
page.has_content?('Tarjeta de crédito')
find("span", :text => "Tarjeta de crédito").click
sleep 2
    fill_in 'redeban_first_name', with: 'test'
    fill_in 'redeban_last_name', with: 'test'
    fill_in 'redeban_cc_number', with: '4111111111111111'
    select '10', :from => 'redeban_expiration_month'
    select '17', :from => 'redeban_expiration_year'
    fill_in 'redeban_cvv', with: '321'
end
def efecty_payment_method_co
page.has_content?('Efecty')
find("span", :text => "Efecty").click
end
def consignacion_payment_method_co
page.has_content?('Consignación Bancaria')
find("span", :text => "Consignación Bancaria").click
end
#-----------> EC
#Depósito bancario o transferencia electrónica
#Tarjeta de crédito
##Pago en efectivo al recibir
def deposit_bank
page.has_content?('Depósito bancario o transferencia electrónica')
find("span", :text => "Depósito bancario o transferencia electrónica").click
end

def tc_payment_method_ec
page.has_content?('Tarjeta de crédito')
find("span", :text => "Tarjeta de crédito").click
end



#-----------> CL
#Webpay (débito/crédito)
#Tarjeta de crédito (6 cuotas sin interés)
##Pago en efectivo al recibir
def method_webpay_cl 
 page.has_content?('Webpay (débito/crédito)')
find("span", :text => "Webpay (débito/crédito)").click
end

#-----------> PA
#Pago con tarjeta de crédito o débito
#Venta Corporativa
##Pago en efectivo al recibir
#credit card on delivery

def venta_corpo_pa 
 page.has_content?('Venta Corporativa')  
 find("span", :text => "Venta Corporativa").click
end

def credit_card_on_delivery
 page.has_content?('Tarjeta de crédito contra entrega')  
 find("span", :text => "Tarjeta de crédito contra entrega").click
end

#-----------> VENEZUELA
#Tarjeta de Crédito American Express novared
#tarjeta de credito
#BBVA Provincial
#Depósito bancario o transferencia electrónica
def method_novared 
 page.has_content?('Tarjeta de Crédito American Express')  
 find("span", :text => "Tarjeta de Crédito American Express").click
end

def method_bbva
 page.has_content?('Tarjeta de Débito BBVA Provincial')  
 find("span", :text => "Tarjeta de Débito BBVA Provincial").click
end


#-----------> PE
#BBVA Continental
#Banco de Crédito
#Pago Efectivo
#Pago con tarjeta de crédito Visa
#Pago contra entrega: Efectivo
def bbva_method
  page.has_content?('BBVA Continental')  
 find("span", :text => "BBVA Continental").click
end
def banco_credito_method
  page.has_content?('Banco de Crédito')  
 find("span", :text => "Banco de Crédito").click
end
def pago_efectivo_method
  page.has_content?('Pago Efectivo')  
 find("span", :text => "Pago Efectivo").click
end
  def method_credit_card_pe
    page.has_content?('Pago con tarjeta de crédito Visa')
    find("span", :text => "Pago con tarjeta de crédito Visa").click
    sleep 2
    fill_in 'visanet_first_name', with: 'test'
    fill_in 'visanet_last_name', with: 'test'
    fill_in 'visanet_cc_number', with: '4111111111111111'
    sleep 2
    select '10', :from => 'visanet_expiration_month'
    select '17', :from => 'visanet_expiration_year'
    fill_in 'visanet_cvv', with: '321'
end


def credit_card_country
@aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
    method_credit_card_mx
  elsif @aux1 == "CL"
    method_credit_card_cl
  elsif @aux1 == "CO"
    tc_payment_method_co
  elsif @aux1 == "PE"
    method_credit_card_pe
  elsif @aux1 == "PA"
    method_credit_card_pa
  elsif @aux1 == "VE"
    method_credit_card_ve
  end
end

  ##Credit Card
  def method_credit_card_mx
    page.has_content?('Tarjeta de crédito o débito')
    find("span", :text => "Tarjeta de crédito o débito").click
    sleep 2
    fill_in 'credit_card_first_name', with: 'test'
    fill_in 'credit_card_last_name', with: 'test'
    fill_in 'credit_card_cc_number', with: '4111111111111111'
    sleep 4
    select '10', :from => 'credit_card_expiration_month'
    select '17', :from => 'credit_card_expiration_year'
    fill_in 'credit_card_cvv', with: '321'
    #find_by_id('credit_card_installments').find("option[value='string:1']").click
    uncheck 'credit_card_save'
  end

  def method_credit_card_cl
    page.has_content?('Tarjeta de crédito (6 cuotas sin interés)')
    find("span", :text => "Tarjeta de crédito (6 cuotas sin interés)").click
   # find(:xpath, '/html/body/div[3]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]').click
    sleep 2
    fill_in 'mercadopago_holder', with: 'test'
    fill_in 'mercadopago_card_number', with: '4111111111111111'
    sleep 5
    select '10', :from => 'mercadopago_expiration_month'
    select '17', :from => 'mercadopago_expiration_year'
    fill_in 'mercadopago_cvv', with: '321'
    select 'RUT', :from => 'mercadopago_document_type'
    fill_in 'mercadopago_document_id', with: '10998987-8'
    sleep 3
    #find_by_id('mercadopago_installments').find("option[value='string:1']").click
  end
  ####PA Credit card
 def method_credit_card_pa
    page.has_content?('Pago con tarjeta de crédito o débito')
    #find("span", :text => "Pago con tarjeta de crédito o débito").click
    sleep 2
    fill_in 'banistmo_first_name', with: 'test'
    fill_in 'banistmo_last_name', with: 'test'
    fill_in 'banistmo_cc_number', with: '4111111111111111'
    #find("#{}")
    sleep 4
    select '10', :from => 'banistmo_expiration_month'
    select '17', :from => 'banistmo_expiration_year'
    fill_in 'banistmo_cvv', with: '321'
  end
####PA Credit card
 def method_credit_card_ve
    #page.has_content?('Tarjeta de Crédito')
   # find("span", :text => "Tarjeta de Crédito").click
    sleep 2
    fill_in 'instapago_first_name', with: 'test'
    fill_in 'instapago_last_name', with: 'test'
    fill_in 'instapago_cc_number', with: '4111111111111111'
    select '10', :from => 'instapago_expiration_month'
    select '17', :from => 'instapago_expiration_year'
    fill_in 'instapago_cvv', with: '321'
    select 'V', :from => 'instapago_rif1'
    fill_in 'instapago_rif2', with: '87654356'
    # => find_by_id('mercadopago_installments').find("option[value='string:1']").click
  end


end