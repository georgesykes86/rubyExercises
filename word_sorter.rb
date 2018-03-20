puts "Lets collect some words. Type an word and press enter to store it. Keep typing words and entering them unitl you are finished. When you are done just press enter without entering a word."

word_array = []

loop do
	word = gets.chomp.downcase
	break if word == ""
	word_array.push(word)
end

#Does it using the sort method. Uncomment to use
#puts word_array.sort 

#Does it without using the sort method
loop do
	swapped = false
	for i in 0...word_array.length-1		
		 if word_array[i] > word_array[i+1]
		 	temp = word_array[i+1]
		 	word_array[i+1] = word_array[i]
		 	word_array[i] = temp
		 	swapped = true
		 end
	end
	break if not swapped
end

puts word_array
