# Takes integer between 1 and 3000
# Use integer division and modulus
# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
# But rewrite so smaller # before larger is a subtraction

# 4 IV, 9 IX, 40 XL, 90 XC, 400 CD, 900 CM

entered_number = nil
loop do
  puts "Enter a number between 1 and 3000: "
  entered_number = gets.chomp
  break if (Integer(entered_number) rescue false) && (entered_number.to_i.between?(1,3000))
  puts "You must enter a number between 1 and 3000!"
end


entered_number = entered_number.to_i

char_map_array = []
char_map_array << 'M'
char_map_array << entered_number / 1000
entered_number %= 1000
char_map_array << 'CM'
char_map_array << entered_number / 900
entered_number %= 900
char_map_array << 'D'
char_map_array << entered_number / 500
entered_number %= 500
char_map_array << 'CD'
char_map_array << entered_number / 400
entered_number %= 400
char_map_array << 'C'
char_map_array << entered_number / 100
entered_number %= 100
char_map_array << 'XC'
char_map_array << entered_number / 90
entered_number %= 90
char_map_array << 'L'
char_map_array << entered_number / 50
entered_number %= 50
char_map_array << 'XL'
char_map_array << entered_number / 40
entered_number %= 40
char_map_array << 'X'
char_map_array << entered_number / 10
entered_number %= 10
char_map_array << 'IX'
char_map_array << entered_number / 9
entered_number %= 9
char_map_array << 'V'
char_map_array << entered_number / 5
entered_number %= 5
char_map_array << 'IV'
char_map_array << entered_number / 4
entered_number %= 4
char_map_array << 'I'
char_map_array << entered_number

char_map_array.each_slice(2) do |map| 
  if [4,9].include?map[1]
    # need different print method
    print map[0]
  else
    print map[0] * map[1]
  end
end
puts 

# 4900
# 'M', 4, 'D', 1, 'C', 0, 