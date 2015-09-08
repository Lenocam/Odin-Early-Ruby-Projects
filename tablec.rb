#Learn to Program/Chris Pine/Odin Project
#Array/Chapter 7 Tasks/Table of Contents

lineWidth = 60
contents = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 72', 'Chapter 3: Variables', 'page 118']

puts contents[0].center lineWidth
puts ' '
i = 0
until i == 6
  puts contents[i += 1].ljust(lineWidth/2) + contents[i += 1].rjust(lineWidth/2)
end
