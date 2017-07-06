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


entered_number = entered_number.chars

entered_number.map! {|digit| digit.to_i}
roman_num = []
roman_legend = %w(I V X L C D M)
count = 0

until entered_number.empty?
  current_place = entered_number.pop
  if current_place != 0
    roman_num << roman_legend[count] * current_place
  end
  count += 1
end

p roman_num

# char_map_array.each_slice(2) {|map| print map[0] * map[1]}
# puts