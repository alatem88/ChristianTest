class MyProfilePage
	 include Capybara::DSL

#All objects of My Profile Page Alice

def visit_my_account
	sleep 2
	visit "#{url_visit}/account/"
end


def my_personal_data_option
	true
end

def my_address_option
	sleep 3
 find(:link, 'Mis direcciones').click
end

def my_profile_my_credit_cards_option
true
end


end