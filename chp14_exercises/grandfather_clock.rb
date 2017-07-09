def grandfather_clock &block
  hours = Time.new.hour
  if hours >=13 
    hours -= 12
  end
  hours.times do 
    block.call
  end
end

grandfather_clock {puts "Dong!"}