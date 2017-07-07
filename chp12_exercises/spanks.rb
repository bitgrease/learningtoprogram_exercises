puts "Enter your birth date (yyyy/mm/dd)"
birth_date = gets.chomp
birth_data = []
birth_data = birth_date.split('/')

birth_data.map! do |data|
  data.gsub!('0','') if data.size == 2
  data.to_i
end

age_in_secs = Time.now - Time.new(birth_data.shift,birth_data.shift,birth_data.shift)

age_in_years = age_in_secs /60/60/24/365
puts "Hey! You're #{age_in_years.floor} years old!"

puts "We've missed some birthday spankings!\nHere we go...hope you don't have to work tomorrow."
sleep(5)
age_in_years.floor.to_i.times do
  puts "SPANK!"
  sleep(1)
end