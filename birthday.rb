require 'date'

puts "What year were you born?"
year = gets.chomp
year = year.to_i
puts " "

puts "What month were you born?"
month = gets.chomp
  if month =~ /\d/
    month = month.to_i
  else
    month = month.upcase
    month = Date::MONTHNAMES.index(month)
  end
puts " "

puts "What number day were you born?"
day = gets.chomp
day = day.to_i
puts " "

puts "Here is a 'SPANK!' for each year you\'ve been alive!"
puts " "

time = Time.new - Time.mktime(year, month, day)
timeYear = time / (365 * 24 * 60 * 60)
timeYear = timeYear.to_i

puts timeYear
puts " "
puts ("SPANK!" + "\n") * timeYear
