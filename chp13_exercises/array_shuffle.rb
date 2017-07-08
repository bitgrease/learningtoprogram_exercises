def shuffle
  shuffled_list = []


  loop do
    unshuffled_cards = 0
    self.each_with_index do |item, index|
      rand_index = rand(self.size)
      until shuffled_list[rand_index].nil? && rand_index != index
        rand_index = rand(self.size)
      end
      shuffled_list[rand_index] = item
    end

    # Test

    (0...self.size).each do |index|
      unshuffled_cards += 1 if self[index] == shuffled_list[index]
    end
    return shuffled_list if unshuffled_cards == 0
  end
end