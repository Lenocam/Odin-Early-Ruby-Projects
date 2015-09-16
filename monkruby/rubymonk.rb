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
array = ["word", "dance", "applesauce", "china"]

def length_finder(input_array)
  p input_array.map { |item| item.length }
end

length_finder(array)
