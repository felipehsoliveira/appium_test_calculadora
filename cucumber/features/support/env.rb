require "appium_lib"
require "pry"

 if ENV['ADEVICENAME']=='mobile1'
 	caps = Appium.load_appium_txt file: File.expand_path("./../mobile1/appium.txt", __FILE__), verbose: true
 elsif ENV['ADEVICENAME']=='mobile2'
   caps = Appium.load_appium_txt file: File.expand_path("./../mobile2/appium.txt", __FILE__), verbose: true
 elsif ENV['ADEVICENAME']=='mobile3'
  caps = Appium.load_appium_txt file: File.expand_path("./../mobile3/appium.txt", __FILE__), verbose: true
 elsif ENV['ADEVICENAME']=='mobile4'
 	caps = Appium.load_appium_txt file: File.expand_path("./../mobile4/appium.txt", __FILE__), verbose: true
 else
 caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
 end

 Appium::Driver.new(caps,true)
 Appium.promote_appium_methods Object



 Before { $driver.start_driver }
 After { $driver.driver_quit }
 



