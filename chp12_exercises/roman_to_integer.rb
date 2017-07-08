# Need to figure out way to determine if the order is correct (i.e. X doesn't 
# come before M in the entered digits).

# Doesn't work when there are odd number and the CM isn't paired before M
# i.e MMMCM


def roman_to_decimal
  roman_to_integer = {
    'm' => 1000, 'd' => 500,
    'c' => 100,  'l' => 50, 
    'x' => 10,   'v' => 5,  
    'i' => 1
  } 

  entered_number = nil
  invalid_chars = -1
  # Get input and check for invalid characters 
  until invalid_chars == 0
    invalid_chars = 0
    puts "Enter a valid roman numeral: "
    entered_number = gets.chomp.downcase
    # check to see if it's valid
    entered_number.chars.each do |char|
      if !(%w(m c d x l i v).include? char)
        invalid_chars += 1
      end
    end
  end
 
  integer_value = 0
  index = entered_number.length-1
  previous_value = 0
  while index >=0
    place = entered_number[index]
    index -= 1
    value = roman_to_integer[place]
    if value < previous_value
      value *= -1
    else
      previous_value = value
    end
    integer_value += value
  end
  integer_value
end

puts roman_to_decimal