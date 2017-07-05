# if not in UPCASE respond "HUH?! SPEAK UP SONNY!"

# if in UPCASE respond "NO, NOT SINCE 19XX between 1930 - 1950"

# if BYE end

def deaf_granny
  bye_count = 0
  loop do
    print "Talk to Granny: "
    say = gets.chomp
    puts "you said #{say}"
    rnd = rand(21) + 1930
    case say
    when -> (say) { say == 'BYE'} 
      bye_count += 1  
      if bye_count < 3
        puts "SORRY? WHAT?"
        next
      else
        puts "Seeya sucka!"
        break
      end
    when -> (say) { say == say.upcase } 
      puts "NO, NOT SINCE #{rnd}."
      bye_count = 0
      next
    else
      puts "HUH?! SPEAK UP SONNY!"
      bye_count = 0
    end
  end
end


deaf_granny