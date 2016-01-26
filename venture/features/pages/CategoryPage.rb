class CategoryPage
	  include Capybara::DSL

#All objects of Category Page Alice
$url=ENV['COUNTRY']

def select_to_product_of_search 
@aux = $url[$url.length-2,$url.length].upcase

  if @aux == "MX"
    # visit "#{url_visit}/p/linioqa-ypgyqs"
    visit "#{url_visit}/p/growing-baby-sonaja-de-pollito-lckun0"
    #find("a", :text => "Linio.QA").click
  elsif @aux == "CO"
   # find("a", :text => "Linio.QA").click
     #visit "#{url_visit}/p/teta-repuesto-ref-a-9-n2j2fu"
     visit "#{url_visit}/p/teta-repuesto-ref-a-9-n2j2fu"
  elsif @aux == "CL"
    #visit "#{url_visit}/p/linioqa-tmwr9g"
    visit "#{url_visit}/p/dispositivo-wifi-ezcast-hdmi-dongle-negro-x0b63w"
    sleep 3
    #find("a", :text => "Linio.QA").click
  elsif @aux == "PA"
    visit "#{url_visit}/p/linioqa-lg50ug"
    #stage
    #visit "#{url_visit}/p/bocinas-genius-sp-s110-100-watts-20-negro-vbjzor"
    #find("a", :text => "Bloc De Dibujo Art Essentials -Melissa & Doug").click
  elsif @aux == "PE"
    visit "#{url_visit}/p/linioqa-jqsh6k"
  elsif @aux == "EC"
    visit "#{url_visit}/p/linioqa-rzda50"
  elsif @aux == "VE"  
    visit "#{url_visit}/p/cinta-adhesiva-celoven-tqcx19"
    #find("a", :text => "Linio.QA").click
   elsif @aux == "AR"
  end
end
  end
