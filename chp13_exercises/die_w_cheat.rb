class Die
  @side_showing
  def initialize
    @side_showing = 6
  end

  def showing
    @side_showing
  end
  def roll
    @side_showing = rand(6) + 1
  end

  def cheat(n)
    if n.between?(1,6)
      @side_showing = n
    else
      puts "Sorry, values must be between 1 and 6!"
      @side_showing
    end
  end
end

d = Die.new
puts d.showing
puts d.roll
puts d.cheat(5)
puts d.cheat(8)
puts d.showing

