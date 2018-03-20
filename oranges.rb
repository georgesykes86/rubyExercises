class OrangeTree
	def initialize
		@age = 0
		@height = 0
		@alive = true
		@oranges = 0
	end

	def height
		@height
	end

	def countTheOranges
		@oranges
	end

	def pickAnOrange
		if @oranges
			@oranges -= 1
			puts "That was a delicious orange"
		else
			"Sorry no oranges to pick"
		end
	end

	def oneYearPasses
		puts "A year goes by...."
		@oranges = 0
		@age += 1
		@height += 0.2

		if @age > 10
			@alive = false
			puts "Your tree died"
			exit
		elsif @age >= 3
			@oranges += 1*@age
		end

	end

end

myTree = OrangeTree.new
puts myTree.height
puts myTree.countTheOranges
myTree.oneYearPasses
myTree.oneYearPasses
puts myTree.height
puts myTree.countTheOranges
myTree.oneYearPasses
myTree.oneYearPasses
myTree.oneYearPasses
puts myTree.countTheOranges
myTree.oneYearPasses
puts myTree.countTheOranges
myTree.pickAnOrange
puts myTree.countTheOranges
myTree.oneYearPasses
myTree.oneYearPasses
myTree.oneYearPasses
puts myTree.countTheOranges
puts myTree.height
myTree.oneYearPasses
myTree.oneYearPasses