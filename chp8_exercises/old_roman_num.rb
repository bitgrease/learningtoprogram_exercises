# Takes integer between 1 and 3000
# Use integer division and modulus
# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000

entered_number = nil
loop do
  puts "Enter a number between 1 and 3000: "
  entered_number = gets.chomp
  break if (Integer(entered_number) rescue false) && (entered_number.to_i.between?(1,3000))
  puts "You must enter a number between 1 and 3000!"
end


entered_number = entered_number.to_i

# num_m /=1000
# entered_number %= 1000
# num_d /= 500
# entered_number %= 500
# num_c /= 100
# entered_number %=100
# num_l /= 50
# entered_number %= 50
# num_x /= 10
# entered_number %= 10
# num_v /= 5
# entered_number %= 5

char_map_array = []
char_map_array << 'M'
char_map_array << entered_number / 1000
entered_number %= 1000
char_map_array << 'D'
char_map_array << entered_number / 500
entered_number %= 500
char_map_array << 'C'
char_map_array << entered_number / 100
entered_number %= 100
char_map_array << 'L'
char_map_array << entered_number / 50
entered_number %= 50
char_map_array << 'X'
char_map_array << entered_number / 10
entered_number %= 10
char_map_array << 'V'
char_map_array << entered_number / 5
entered_number %= 5
char_map_array << 'I'
char_map_array << entered_number

char_map_array.each_slice(2) {|map| print map[0] * map[1]}
puts