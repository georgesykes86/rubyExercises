puts "WHat year do you want to start at?"
start_year = gets.chomp.to_i
puts "What year do you want to end with?"
end_year = gets.chomp.to_i

for year in start_year..end_year
	if year % 4 == 0 && year % 100 != 0
		puts year
	elsif year % 400 == 0
		puts year
	end
end

