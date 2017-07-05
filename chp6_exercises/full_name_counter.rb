name_location = %w(first middle last)
names = []

name_location.each do |loc| 
  puts "What's your #{loc} name?"
  names << gets.chomp
end
count = 0
names.each {|name| count += name.length}
print "Your name has #{count.to_s} letters."