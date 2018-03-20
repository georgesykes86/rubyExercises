$nestingLevel = 0

def log blockDescription, &block
	$nestingLevel += 1
	puts "   "*$nestingLevel + "Beginning \"#{blockDescription}\"..."
	returnVal = block.call
	puts "   "*$nestingLevel + "...\"#{blockDescription}\" finished, returning: #{returnVal}"
	$nestingLevel -= 1
end

log "outer block" do |x|
	log "first inner block" do |y|
		y = 4 + 1 
	end
	log "second inner block" do |z|
	 "I like thai food!" 
	end
	x = false
end