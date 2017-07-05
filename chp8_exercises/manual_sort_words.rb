list = ['z','b','c', 'xray', 'apple', 'moose']

def mysort(words)
  words.each_index {|i| 
    unless i == words.length-1
      (i+1...words.length).each do |j|
        if words[j][0] < words[i][0]
          tmp = words[i]
          words[i] = words[j]
          words[j] = tmp
        end
      end
    end
  }
end

puts mysort(list)