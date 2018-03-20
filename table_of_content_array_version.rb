table_of_contents = [[1,"Numbers", 1], [2,"Letters", 72], [3,"Variable", 118]]

title = "Table of Contents"
lineWidth = 70

puts title.center(lineWidth)
puts ""
table_of_contents.each do |x| 
	puts "Chapter #{x[0]}:   #{x[1]}".ljust(lineWidth/2) + "page #{x[2]}".rjust(lineWidth/2)
end