arr = []
loop do
  puts "Enter a word or an empty line to stop:"
  word = gets.chomp
  break if word == ''
  arr << word
end

 puts arr.sort unless arr.empty?