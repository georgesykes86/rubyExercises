require_relative "wedding_number"
include WeddingNumber

module NinetyNineBottles
	bottles = 999

	while bottles > 0
	  bottle_num = wedNumber(bottles)
	  next_bottle_num = wedNumber((bottles-1))
		if bottles == 1
			puts "#{bottle_num} bottle of beer on the wall, #{bottle_num} bottle of beer."
			puts "Take one down and pass it around, no more bottles of beer on the wall."
			puts ""
		else
			puts "#{bottle_num} bottles of beer on the wall, #{bottle_num} bottles of beer."
			puts "Take one down and pass it around, #{next_bottle_num} bottles of beer on the wall."
			puts ""
		end

		bottles -= 1

	end

	puts "No more bottles of beer on the wall, no more bottles of beer"
	puts "Go to the store and buy some more, 99 bottles of beer on the wall."
end