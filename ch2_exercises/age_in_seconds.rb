puts "Enter your birhdate (dd/mm/yyyy)"
birth_date = gets.chomp
birth_date = birth_date.split('/').map { |i| i.to_i}
age_in_seconds = Time.now - Time.new(birth_date.last,birth_date.first,birth_date[1])
puts "Your age in seconds is %E." % age_in_seconds

