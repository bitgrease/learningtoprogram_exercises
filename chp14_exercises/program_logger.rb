def log description, &block
  puts "Starting the block #{description}..."
  ret_value = block[]
  puts "Finishing the block."
  puts "=> #{ret_value}"
end

log "Square of one to five..." do 
  (1..5).map {|a| a**2}
end