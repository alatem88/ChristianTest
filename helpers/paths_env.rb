require 'fileutils'
require 'yaml'
#require_relative '../global/config/cucumber.yml'

$url=ENV['COUNTRY']

config = YAML.load(File.read("../venture/config/cucumber.yml"))
$usr = config["usr"]
$pas = config["pas"]
$cod_cupon = config["cod_cupon"]
$user_alice01 = config["user_alice01"]
$pass_alice01 = config["pass_alice01"]
$user_alice02 = config["user_alice02"]
$pass_alice02 = config["pass_alice02"]
$user_alice03 = config["user_alice03"]
$pass_alice03 = config["pass_alice03"]
$user_alice04 = config["user_alice04"]
$pass_alice04 = config["pass_alice04"]
$user_alice06 = config["user_alice06"]
$pass_alice06 = config["pass_alice06"]
$driver = config["driver"]
#$url= config['COUNTRY']
$default_reports = config['default_reports']
$item = config["item"]

# => RETURN URL COUNTRY

def url_visit
  par = case $url.upcase
  when "LMX" then "https://www.linio.com.mx"
  when "LCO" then "https://www.linio.com.co"
  when "LCL" then "https://www.linio.cl"
  when "LVE" then "https://www.linio.com.ve"
  when "LAR" then "https://www.linio.com.ar"
  when "LEC" then "https://www.linio.com.ec"
  when "LPA" then "https://www.linio.com.pa"  
  when "LPE" then "https://www.linio.com.pe" 
#batman
  when "A01_MX" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-mx.linio-staging.com"
  when "A01_CO" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-co.linio-staging.com"
  when "A01_CL" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-cl.linio-staging.com"
  when "A01_VE" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-ve.linio-staging.com"
  when "A01_AR" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-ar.linio-staging.com"
  when "A01_EC" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-ec.linio-staging.com"
  when "A01_PA" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-pa.linio-staging.com"  
  when "A01_PE" then "http://#{$user_alice01}:#{$pass_alice01}@alice01-pe.linio-staging.com" 
  #cobra
  when "A02_MX" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-mx.linio-staging.com"
  when "A02_CO" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-co.linio-staging.com"
  when "A02_CL" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-cl.linio-staging.com"
  when "A02_VE" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-ve.linio-staging.com"
  when "A02_AR" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-ar.linio-staging.com"
  when "A02_EC" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-ec.linio-staging.com"
  when "A02_PA" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-pa.linio-staging.com"  
  when "A02_PE" then "http://#{$user_alice02}:#{$pass_alice02}@alice02-pe.linio-staging.com" 
  #mobile
  when "A03_MX" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-mx.linio-staging.com"
  when "A03_CO" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-co.linio-staging.com"
  when "A03_CL" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-cl.linio-staging.com"
  when "A03_VE" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-ve.linio-staging.com"
  when "A03_AR" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-ar.linio-staging.com"
  when "A03_EC" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-ec.linio-staging.com"
  when "A03_PA" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-pa.linio-staging.com"  
  when "A03_PE" then "http://#{$user_alice03}:#{$pass_alice03}@alice03-pe.linio-staging.com" 
  #shop-launch
  when "A04_MX" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-mx.linio-staging.com"
  when "A04_CO" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-co.linio-staging.com"
  when "A04_CL" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-cl.linio-staging.com"
  when "A04_VE" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-ve.linio-staging.com"
  when "A04_AR" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-ar.linio-staging.com"
  when "A04_EC" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-ec.linio-staging.com"
  when "A04_PA" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-pa.linio-staging.com"  
  when "A04_PE" then "http://#{$user_alice04}:#{$pass_alice04}@alice04-pe.linio-staging.com" 

  when "A06_MX" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-mx.linio-staging.com"
  when "A06_EC" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-ec.linio-staging.com"
  when "A06_CL" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-cl.linio-staging.com"
  when "A06_CO" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-co.linio-staging.com"
  when "A06_PA" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-pa.linio-staging.com"
  when "A06_PE" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-pe.linio-staging.com"
  when "A06_AR" then "https://#{$user_alice06}:#{$pass_alice06}@shop-front06-ar.linio-staging.com"
     
  else "Error country"
  end
  return par
rescue
  puts "Error"
end

  

