#Learn to Program/Chris Pine/Odin Project
#Deaf Granny

hear = false
bye_count = 0
while hear == false
  puts ' '
  puts 'Say something to Granny.'
  she_said = gets.chomp

  if she_said == 'BYE'
    puts 'Huh, I couldn\'t hear you.'
    puts 'Please repeat yourself.'
    bye_count += 1

    if bye_count == 3
      puts 'Okay Honey, you got to go.'
      hear = true
    end

  elsif she_said == she_said.upcase
    year = rand(1930..1950)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  else
    puts 'HUH?!  SPEAK UP, SONNY!'
  end
end
