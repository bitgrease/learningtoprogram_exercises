def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if ['yes', 'no'].include? reply
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end 

puts ask "Is this good?"