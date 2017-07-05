# if not in UPCASE respond "HUH?! SPEAK UP SONNY!"

# if in UPCASE respond "NO, NOT SINCE 19XX between 1930 - 1950"

# if BYE end

def deaf_granny
  loop do
    print "Talk to Granny: "
    say = gets.chomp
    puts "you said #{say}"
    rnd = rand(21) + 1930
    case say
    when -> (say) { say == 'BYE'}
      puts "Seeya sucka!"
      break
    when -> (say) { say == say.upcase } 
      puts "NO, NOT SINCE #{rnd}."
      next
    else
      puts "HUH?! SPEAK UP SONNY!"
    end
  end
end


deaf_granny