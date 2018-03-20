birthTime = Time.mktime(1988, 10, 20)
billionSecondsTime = birthTime + 1_000_000_000
puts "I will be a billion seconds old on " + billionSecondsTime.to_s

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born (number please)?"
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

timeNow = Time.new

yourBday = Time.mktime(year, month, day)

if timeNow.month > yourBday.month || (timeNow.day >= yourBday.day && timeNow.month == yourBday.month)
	yourAge = timeNow.year - yourBday.year
else 
	yourAge = (timeNow.year - yourBday.year) - 1
end

puts "You are #{yourAge}"
puts "SPANK!" * yourAge

