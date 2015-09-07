#Learn to Program/Chris Pine/Odin Project
#Leap years

first_year = 0
last_year = 0
puts 'I will tell you what years are leap years in between any two years.'
puts ' '
puts 'Give me the first year you want me to check inbetween.'
first_year = gets.chomp.to_i
puts ' '
puts 'Give me the last year you want me to check inbetween.'
last_year = gets.chomp.to_i
puts ' '

if first_year < last_year
  while first_year != last_year + 1
    if first_year < 100 and first_year % 4 == 0
      puts first_year.to_s
    else
      if first_year % 4 == 0 and (first_year % 100 != 0 or first_year % 400 == 0)
        puts first_year.to_s
      end
    end
    first_year += 1
  end
elsif first_year == last_year
  puts 'Sorry, you need to put two different years.'
  puts 'Run the program again ;)'

else
  while last_year != first_year + 1
    if last_year < 100 and last_year % 4 == 0
      puts last_year.to_s
    else
      if last_year % 4 == 0 and (last_year % 100 != 0 or last_year % 400 == 0)
        puts last_year.to_s
      end
    end
    last_year += 1
  end
end
