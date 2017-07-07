puts "Enter your birth date (yyyy/mm/dd)"
birth_date = gets.chomp
puts "Enter the time you were born (hh:mm - military time please):"
birth_time = gets.chomp
puts "Enter the time relative to GMT (+/-hh:00)"
time_zone = gets.chomp
birth_data = []
birth_data = birth_date.split('/')
birth_data << birth_time.split(':')
birth_data.flatten!
birth_data.map! do |data| 
  data.gsub!('0','') if data.size == 2
  data.to_i 
end

birth_data << time_zone

puts \
(Time.new(birth_data[0],birth_data[1],birth_data[2],birth_data[3],birth_data[4],0,birth_data[5])  + 1000000000)

