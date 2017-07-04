decades = nil

loop do
  puts "Enter a number of decades: "
  decades = gets.chomp
  break if Integer(decades) rescue false
  puts "Sorry, you must enter an integer."
end

puts "There are %E minutes in #{decades} years." % (decades.to_i * 3650 * 1440)

