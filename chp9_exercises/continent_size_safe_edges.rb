M = 'land'
o = 'water'

world = [[M,o,o,M,o,o,o,o,o,o,o],
         [o,o,o,M,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [M,M,M,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size world, x, y
  begin
    if world[y][x] != 'land'
      # Either it's water or it's already counted
      # either way, don't count it now.
      return 0
    end
  rescue
    return 0
  end
  # count the tile we're on first
  size = 1
  world[y][x] = 'counted land'
  # count neighoring 8 tiles
  size = size + continent_size(world, x-1,y-1)
  size = size + continent_size(world, x,y-1)
  size = size + continent_size(world, x+1,y-1)
  size = size + continent_size(world, x-1,y)
  size = size + continent_size(world, x+1,y)
  size = size + continent_size(world, x-1,y+1)
  size = size + continent_size(world, x,y+1)
  size = size + continent_size(world, x+1,y+1)
  size
end

puts continent_size(world, 5, 5)

