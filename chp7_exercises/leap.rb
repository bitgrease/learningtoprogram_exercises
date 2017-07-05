# %100 == 0 !leap unless % by 400
# %4 are
# 
puts "Enter start year: "
start = gets.chomp
puts "Enter end year: "
stop = gets.chomp
(start.to_i..stop.to_i).each do |n|
  if n%4 ==0 && n%100 == 0 && n%400 == 0
      puts "#{n} is a leap year"
  elsif n%4 == 0 && n%100 != 0
      puts "#{n} is a leap year"
  elsif n%4 == 0 && n%100 == 0
    puts "#{n} is NOT a leap year"
  end
end