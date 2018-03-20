puts "What do you wnat to say to Grandma?"

answer = gets.chomp
bye_count = 0

until (answer == "BYE" && bye_count == 2)
	if  answer == "BYE"
		bye_count += 1
		answer = gets.chomp
	elsif answer == answer.upcase
		year = 1930 + rand(21)
		puts "NO NOT SINCE #{year}!"
		answer = gets.chomp
		bye_count = 0
	else
		puts "HUH? SPEAK UP SONNY!"
		answer = gets.chomp
		bye_count = 0
	end
end