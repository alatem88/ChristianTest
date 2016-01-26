class RegistrationUserPage
  include Capybara::DSL

#All methods of all forms of registration user

def form_registration_user
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
    form_registration_mx
  elsif @aux == "CL"
    form_registration_cl
  elsif @aux == "EC"
    form_registration_ec
  elsif @aux == "CO"
    form_registration_co
  elsif @aux == "PE"
    form_registration_pe
  elsif @aux == "PA"
    form_registration_pa
  elsif @aux == "VE"
    form_registration_ve
  elsif @aux == "AR"
    form_registration_ar
  end
end

  def form_registration_ec
        fill_in 'registration_email', with: $email
        fill_in 'registration_first_name', with: 'test'
        fill_in 'registration_last_name', with: 'test'
        fill_in 'registration_password_first', with: 'test1234'
        fill_in 'registration_password_second', with: 'test1234'
        fill_in 'registration_tax_identification_number', with: '777777777-7'
        fill_in 'registration_phoneNumber', with: '(777) 777-7777'
        check('registration_subscribedToNewsletter_0')
        sleep 5
    end


  def form_registration_cl
      sleep 2
      fill_in 'registration_email', with: $email
      fill_in 'registration_first_name', with: 'test'
      fill_in 'registration_last_name', with: 'test'
      fill_in 'registration_password_first', with: 'test1234'
      fill_in 'registration_password_second', with: 'test1234'
      fill_in 'registration_tax_identification_number', with: '22750019-0'
      fill_in 'registration_phoneNumber', with: '77777777'
      check('registration_subscribedToNewsletter_0')
      sleep 5
  end

  def form_registration_mx
    sleep 4
    fill_in 'registration_email', with: $email
    fill_in 'registration_sms_phone', with: '5575654356'
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    sleep 3
  end

  def form_registration_co
    fill_in 'registration_email', with: $email
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    fill_in 'registration_national_registration_number', with: '23466538'
    sleep 3
  end
  def form_registration_pa
    fill_in 'registration_email', with: $email
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    fill_in 'registration_sms_phone', with: '78654324'
    sleep 3
  end
 def form_registration_pe
    fill_in 'registration_email', with: $email
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    fill_in 'registration_sms_phone', with: '776758979'
    fill_in 'registration_national_registration_number', with: '89798676'
    sleep 3
  end
  def form_registration_ve
    fill_in 'registration_email', with: $email
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    fill_in 'registration_sms_phone', with: '9876 5435678'
    fill_in 'registration_national_registration_number', with: '99999999'
    sleep 3
  end
  def form_registration_ar
    fill_in 'registration_email', with: $email
    fill_in 'registration_first_name', with: 'test'
    fill_in 'registration_last_name', with: 'test'
    fill_in 'registration_password_first', with: 'test1234'
    fill_in 'registration_password_second', with: 'test1234'
    fill_in 'registration_sms_phone', with: '776758979'
    sleep 3
  end
  

end