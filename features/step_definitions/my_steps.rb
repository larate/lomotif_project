Given(/^I land on main screen$/) do
  puts "hello world"
end

Then(/^I tap on a home button$/) do
find_element(xpath: "//android.widget.ImageView[@index = '0']").click

end

Then(/^I allow Lomotif to access photos on my phone$/) do
  find_element(id: "permission_allow_button").click
end


When(/^I press on Following icon$/) do
  pendingtext("Following")
end