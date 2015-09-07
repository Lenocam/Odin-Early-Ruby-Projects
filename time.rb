year = 365.0 #in days
day = 24.0 #in hours
decade = 10.0 #in years
hour = 60.0 #in minutes
minutes = 60.0 #in seconds

hours_year = year * day
puts "hours in a year #{hours_year}!"

minutes_in_decade = decade * hours_year * hour
puts "there are #{minutes_in_decade} in a decade"

years_old = 2015 - 1980
puts years_old

reed_rough_seconds = years_old * hours_year * hour * minutes
puts "Reed is roughly #{reed_rough_seconds} seconds old" #reed didn't want to break down months an days

chris_age = 1233000000 / (minutes * hour * hours_year)
puts "#{chris_age}"
test = minutes * hour * hours_year
puts "#{test}"
