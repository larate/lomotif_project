require "appium_lib"
Before do
  $driver.start_driver
end


After do
  $driver.driver_quit
end
def capabil
  { caps: {
      deviceName: "Anyname",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "base.apk")),
      appPackage: "com.lomotif.android",
      #appActivity: "MainConverterActivity",
      newCommandTimeout: "3600"
  }}
end
Appium::Driver.new(capabil, true)
Appium.promote_appium_methods Object
