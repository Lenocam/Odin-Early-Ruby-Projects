array = []
word = 'example'
puts ' '
puts "Write a word, then press enter to write another word"
puts "If you hit enter on an empty line, your previous words will be"
puts "sorted alphabetically"
puts ' '

while word != ''
  word = gets.chomp
  array.push word.downcase
end

puts "Your list arranged alphabetically"
puts array.sort
