$nesting_depth = 0

def log description, &block
  puts "Starting the block #{description}...".insert(0, " " * $nesting_depth)
  $nesting_depth += 2
  ret_value = block[]
  $nesting_depth -= 2
  puts "Finishing the block.".insert(0, " " * $nesting_depth)
  puts "=> #{ret_value}".insert(0, " " * $nesting_depth)
end

log "Inner loop 1" do 
  log "Inner loop 2" do |a|
    log "inner loop 3" do
      log "inner inner loop 4" do
        3
      end
      log "inner inner loop 4.5" do
        4.5
      end
    end 
  end
end