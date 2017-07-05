toc_array = [
  "Table of Contents",
  "Chapter 1   Getting Started", "page 1",
  "Chapter 2:  Numbers", "page 9",
  "Chapter 3:  Letters", "page 13"
]
line_width = 60
puts toc_array.shift.center(line_width)

until toc_array.empty?
  puts (toc_array.shift.ljust(line_width/2) + toc_array.shift.rjust(line_width/2))
end