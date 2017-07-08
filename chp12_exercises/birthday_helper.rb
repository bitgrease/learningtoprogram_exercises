require 'yaml'

birthday_data = File.read("birthday.data")
birthday_data = YAML::load birthday_data

months = %w(jan feb mar apr may jun jul aug sep oct nov dec)

puts "Enter a Name: "
entered_name = gets.chomp
3.times do
  print "-"
  sleep(1)
end

first_name, last_name = entered_name.split(" ")
birthdate = birthday_data.fetch(entered_name, "Not Found")

if birthdate == "Not Found"
  return "Sorry, no data found."
end

month, day, year = birthdate.split(" ")
month = months.index(month.downcase) + 1

day.gsub!(',','')

puts "#{entered_name} was born on #{birthdate}."

age = Time.now - Time.new(year.to_i, month, day.to_i)
age = age /60/60/24/365

puts
puts "#{first_name} is currently #{age.floor} years old."



