puts "What is your first name?"
firstName = gets.chomp
puts "What is your middle name?"
middleName = gets.chomp
puts "What is your surname?"
lastName = gets.chomp

puts "Welcome #{firstName} #{middleName} #{lastName}"

puts "Right then #{firstName}, what's your favourite number?"

favNum = gets.chomp.to_i
betNum = favNum + 1

puts "Not a bad choice but #{betNum} would have been bigger and better!"

puts "There are " + (firstName.length + middleName.length + lastName.length).to_s + " letters in your name"


