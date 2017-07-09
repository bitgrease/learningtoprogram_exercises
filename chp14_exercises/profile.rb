$PROFILING_ENABLED = true
def profile description, &block
  if $PROFILING_ENABLED
    start_time = Time.now
    block.call
    duration = Time.now - start_time
    puts "#{description}: #{duration} seconds"
  else
    block.call
  end
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number += number
  end
end