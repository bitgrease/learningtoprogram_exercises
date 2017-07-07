list = ['z','b','c', 'xray', 'apple', 'moose']
new_list = []
def sort(sorted, unsorted)
  
  until unsorted.size == 0
    least = unsorted.pop
    unsorted.each do |unsorted_word|
      if unsorted_word < least  
        unsorted.push(least)
        least = unsorted.delete(unsorted_word)
      end
    end
    sorted << least
  end
end

sort(new_list, list)
puts new_list



