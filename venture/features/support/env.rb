require 'capybara/cucumber'
require 'yaml'

require_relative '../../../helpers/generic.rb'
require_relative '../../../helpers/paths_env.rb'

###################WebDriver ChromeDriver

#Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end
config = YAML.load(File.read("../venture/config/cucumber.yml"))
$driver = config["driver"]

case $driver
      when "selenium" then 
	      require 'selenium/webdriver'
	     
		  Capybara.default_driver = :selenium

	 when "chromedriver" then 
	 		Capybara.register_driver :selenium_chrome do |app|
			Capybara::Selenium::Driver.new(app, :browser => :chrome)
			end
			Capybara.default_driver = :selenium_chrome

      when "phantom" then 
      	
	      require 'capybara/poltergeist'
	      Capybara.default_driver = :poltergeist
		  Capybara.javascript_driver = :poltergeist
		  options = { js_errors: false, 	
		  			  timeout: 300, 
		  			  phantomjs_logger: StringIO.new, 
		  			  logger: nil, 
		  			  phantomjs_options: ['--load-images=no', '--ignore-ssl-errors=yes'] }
		  			  Capybara.ignore_hidden_elements = true
		 # Capybara.default_selector = :xpath
		  Capybara.register_driver(:poltergeist) do |app|
  	      Capybara::Poltergeist::Driver.new app, options 
        
	 end
  else "Error"


end



