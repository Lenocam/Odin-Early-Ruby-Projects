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

puts find_frequency(frank, "do")
puts ""

#Sort the words in a given sentence by length


sentence = "Sort words in a sentence"
def sort_string(string)
  ary = Array.new
  ary = string.split
  ary.sort_by! { |x| x.length }
  ary.join(" ")
end

puts sort_string(sentence)

#Select random elements from an array

another_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def random_select(array, n)
  # your code here
  array.shuffle! #rubymonk would not let it pass with this
  #array = array.shuffle worked though
  array.take(n)
end

puts random_select(another_array, 2)
#Palindromes
another_sentence = "Never odd or even"

def palindrome?(sentence)
  sentence.downcase!
  sentence.gsub!(' ', '')
  sentence == sentence.reverse
end

p palindrome?(another_sentence)


#Sum of Cubes

def sum_of_cubes (a, b)
  sum = 0
  array = (a..b).to_a
  array.map! { |a| a**3}
  array.each { |a| sum += a}
  sum
end

puts sum_of_cubes(1, 3)

#return non-duplicate values from an Array
arr = [1, 2, 2, 3, 2, 5, 6, 4, 45, 4, 7, 1, 6]
def non_duplicated_values(values)
  counts = Hash.new(0)
  values.each  {|i| counts[i] += 1 }
   counts.each do |k, v|
     if v > 1
       counts.delete(k)
     end
   end
   values =counts.keys
end

puts non_duplicated_values(arr)
