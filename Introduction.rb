MY_AGE  = 31

#Age in years to seconds - Does not include leap years
def years_to_seconds (years)
	return years * 365 * 24 * 3600
end

def years_to_minutes (years)
	return years * 365 * 24 * 60
end

def years_to_hours (years)
	return years * 365 * 24
end

def chocs_in_life (chocs_per_day, life_expectancy)
	return chocs_per_day.to_i * 365 * life_expectancy.to_i
end

def seconds_to_years (seconds)
	return seconds.to_i / (3600 * 24 * 365)
end

puts "I am #{years_to_seconds(MY_AGE)} seconds old"
puts "A decade is #{years_to_minutes(10)} minutes"
puts "A year is #{years_to_hours(1)} hours"

puts "How old will you be when you die?"
life_exp = gets().chomp
puts "How many chocolates do you eat per day? (Whole number please)"
chocs_per_diem = gets().chomp

puts "You will eat #{chocs_in_life(chocs_per_diem, life_exp)} in your life"

puts "If I am 1_298_000_000 seconds old then I am #{seconds_to_years(1298000000)} years old"


