# added count to confirm recursion

list = ['z','b','c', 'xray', 'apple', 'moose']
new_list = []
def sort(sorted, unsorted, count)
  count += 1
  puts count 
  until unsorted.size == 0
    least = unsorted.pop
    unsorted.each do |unsorted_word|
      if unsorted_word < least  
        unsorted.push(least)
        least = unsorted.delete(unsorted_word)
      end
    end
    sorted << least
    sort(sorted, unsorted, count)
  end
end

sort(new_list, list, 0)
puts new_list