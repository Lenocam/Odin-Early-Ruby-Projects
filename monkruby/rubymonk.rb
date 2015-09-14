#rubymonk/odin project

def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end
puts introduction(28, "Male", "Sidu", "Ponnappa", "Chonira")
