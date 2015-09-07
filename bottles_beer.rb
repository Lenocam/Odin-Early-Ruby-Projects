#Learn to Program/Chris Pine/Odin Project

#99 Bottles of Beer on the Wall
number = 99

while number > 0

puts number.to_s + ' bottle of beer on the wall, ' + number.to_s + ' bottles of beer.'
puts 'Take one down and pass it around ,' + (number - 1).to_s + ' bottles of beer on the wall'
puts ' '
number -= 1
end
