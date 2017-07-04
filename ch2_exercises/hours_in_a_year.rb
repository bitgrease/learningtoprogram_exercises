years_entered = nil
loop do
  puts "Enter a number of years: "
  years_entered = gets.chomp
  break if Integer(years_entered) rescue false
  puts "Sorry, you must enter an integer."
end

puts "There are #{years_entered.to_i * 365 * 24} hours in #{years_entered} years."