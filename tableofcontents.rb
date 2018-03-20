title = "Table of Contents"
lineWidth = 70

toc = Hash.new

toc[:Numbers] = 1
toc[:Letters] = 72
toc[:Variables] = 118

puts title.center(lineWidth)
puts ""

chapter = 1
toc.each do |k,v| 
	puts "Chapter #{chapter}:   #{k.to_s}".ljust(lineWidth/2) + "page #{v}".rjust(lineWidth/2)
	chapter += 1
end

