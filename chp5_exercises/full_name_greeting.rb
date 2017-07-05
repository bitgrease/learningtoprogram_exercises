name_location = %w(first middle last)
names = []

name_location.each do |loc| 
  puts "What's your #{loc} name?"
  names << gets.chomp
end

print "Well Hello,"
names.each {|n| print " #{n}"}
puts "!"