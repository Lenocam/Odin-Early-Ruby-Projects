#rubymonk/odin project

def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end
puts introduction(28, "Male", "Sidu", "Ponnappa", "Chonira")

Increment = lambda {|number| number.next }

puts Increment.call(1)
puts Increment.call(-1)
puts Increment.call(1000)

#RubyMonk Problems
#length of each word in array
array = ["word", "dance", "applesauce", "china"]

def length_finder(input_array)
  p input_array.map { |item| item.length }
end

length_finder(array)
puts " "

#split string, count word frequency case insensitive
frank = 'Do or do not... there is no try.'
def find_frequency(sentence, word)
  # Your code here
  sentence.downcase!
  sentence.split.count(word)
end

p find_frequency(frank, "do")
