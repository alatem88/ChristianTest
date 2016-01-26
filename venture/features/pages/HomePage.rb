class HomePage
	  include Capybara::DSL
#All objects of Home Page Alice

def url_home
	visit url_visit
 end


def search_product
  within 'div.search-bar' do
    sleep 2
    fill_in ' Busca productos', with: $item
  end 
rescue
  puts 'Item not found'
end

def click_search_product_button
	sleep 3
	click_button 'Buscar'
end

def link_iniciar_sesion_home
	sleep 3
	#first("a", :text => "Iniciar Sesión").click
	page.has_content?('Iniciar Sesión')
	find(:xpath, '/html/body/header/div/div[2]/div[1]/div[2]/a[1]').click
	#find(:xpath, '[@class="start-session guest"').click
 	#click_on 'Iniciar Sesión'
# => end
end



end	


