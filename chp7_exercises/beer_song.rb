number_of_bottles = nil
loop do
  puts "Let's sing a song about beer. How much beer should we sing about?[1 - 99]"
  number_of_bottles = gets.chomp
  break if (Integer(number_of_bottles) rescue false) && number_of_bottles.to_i.between?(1,99) 
  puts "Must enter a number between 1 and 99."
end

number_of_bottles = number_of_bottles.to_i
puts "==============================================="
puts "               Singing begins                  "
puts "==============================================="

while number_of_bottles > 0
  if number_of_bottles == 1
    puts "#{number_of_bottles} bottle of beer on the wall."
    puts "#{number_of_bottles} bottle of beer, take one down, pass it around."
    puts "No more bottles of beer on the wall!"
    number_of_bottles -= 1
  else
    puts "#{number_of_bottles} bottles of beer on the wall."
    puts "#{number_of_bottles} bottles of beer, take one down, pass it around."
    number_of_bottles -= 1
    if number_of_bottles == 1
      puts "#{number_of_bottles} bottle of beer on the wall!"
    else
      puts "#{number_of_bottles} bottles of beer on the wall!"
    end
  end
end
