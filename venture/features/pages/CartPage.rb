class CartPage
	  include Capybara::DSL

#All objects of Cart Page Alice
$url=ENV['COUNTRY']

def select_change_quantity
  within 'div.col-md-24' do
   # find("a", :text => "1").click
 find(:xpath, '//*[@id="shopping-cart-table"]/tbody/tr/td[1]/div[2]/select/option[2]').click

 # find(:xpath, '//*[@id="shopping-cart-table"]/tbody/tr/td[1]/div[2]/select/option[2]').click
  #//*[@id="shopping-cart-table"]/tbody/tr/td[1]/div[2]/select/option[2]
end
 # within 'div.padding-large-left' do
 # find("span", :text => "2")
 #  puts 'success change quantity product'
  # end 
  #<span ng-bind="cartCount" class="ng-binding">2</span>
  sleep 10
end

def button_procesar_compra_cart
  sleep 4
  @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "CO"
    find(:xpath, '/html/body/div[6]/div/div[3]/div/div[7]').click
    elsif @aux1 == "CL"
      visit "#{url_visit}/checkout/shipping-address"
      sleep 3
     #find(:link, 'Procesar Compra').click
     #find(:xpath,'//html/body/div[6]/div/div[3]/div/div[6]/a').click 
      elsif @aux1 != "CO"
        sleep 1
          find(:xpath, '/html/body/div[6]/div/div[3]/div/div[6]').click
  end
end

def button_delete_item_cart
  find(:css, "div.item-actions.text-right > a > i").click
    sleep 10
  within 'div.padding-large-left' do
   find("span", :text => "0")
   puts 'success delete product'
  end 
end

def add_coupon_cart(code_cupon)
  sleep 5
  find(:link, "Aplicar cupón")
  # add cupon
  # => browser.evaluate(script) EJECUTAR UN SCRIPT
  # => browser.evaluate(script) RETORNA EL VALOR DE UN SCRIPT
  execute_script("var txtCupon = document.addVoucherForm.elements[0]; txtCupon.value = '#{code_cupon}';")
  click_on 'Aplicar'
  sleep 5
end


end 