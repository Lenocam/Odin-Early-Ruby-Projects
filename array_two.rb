#Learn to Program/Chris Pine/Odin Project
#Array/Sort User Input with homemade sort

array = []
word = 'example'
puts ' '
puts "Write a word, then press enter to write another word"
puts "If you hit enter on an empty line, your previous words will be"
puts "sorted alphabetically"
puts ' '

while word != ''
  word = gets.chomp
  word = word.downcase
  array.push word
end

array.each_index do |word1|
  array.each_index do |word2|
    if array[word1] < array[word2]
      array[word1], array[word2] = array[word2], array[word1]
      array.join(', ')
    end
  end
end

puts "Your list arranged alphabetically"
puts array
