# shuffle given array. Make sure that no value is in it's previous location

unshuffled = ['a','b','c','d','e','f']

def shuffle(list)
  shuffled_list = []


  loop do
    unshuffled_cards = 0
    list.each_with_index do |item, index|
      rand_index = rand(list.size)
      until shuffled_list[rand_index].nil? && rand_index != index
        rand_index = rand(list.size)
      end
      shuffled_list[rand_index] = item
    end

    # Test

    (0...list.size).each do |index|
      unshuffled_cards += 1 if list[index] == shuffled_list[index]
    end
    return shuffled_list if unshuffled_cards == 0
  end
end

puts shuffle(unshuffled)



