#..Some array methods
p [1,2,3]

arr = [1,2,3,4,5]
puts arr.inspect
puts arr.reverse.inspect
arr.length
arr.collect! {|num| num*2}
arr.select {|num| num%2 == 0} #reject does the opposite
arr2 = ["George", 2 ,:symbol, 2.0]
arr2.select {|item| item.is_a? Symbol}
arr.include? 2
arr.each {|thing| puts thing**2} #You can do clever thingsby iterating each_with_index
# 5.times {puts "Hi"}
new_arr = arr.map {|num| num - 3}
puts new_arr.reduce(1, :*)


#Some string methods
"He9llo***  ".gsub!(/[^a-zA-Z]/,"")
puts "Hello".split('').inspect
puts "hello"[2,3]
puts "hello"[2..3]
puts "HelLo".swapcase

#Hashes
myHash = Hash.new("default")
myHash["George"] = 32
myHash.merge!({ Ben: 40,	"Tom": 12})
puts myHash
sortedHash = myHash.sort_by {|k,v| k.to_s}
puts sortedHash
agecomp = myHash.map {|k,v| v <=> 25}
puts agecomp.inspect
myHash.each_key {|key| puts key}

#..Some loop methods
var = false

#if v unless
if var
	"true"
else
	"false"
end

unless var then "false" 

puts var ? "it's true": "its false" end

#while v until
x = 0
while x < 5
	arr2.push(x)
	x+=1
end

y = false
arr3 = []
until y 
	x = rand(4)
	arr3.push(x)
	if x == 2
		y = true
	end
end
puts arr3.inspect

3.upto(7) {|num| puts num}

#loop
# loop do
# 	y = rand(10)
# 	break if y == 5
# 	puts "still going"
# 	if y < 5 then next end
# 	puts "Big number"
# end

# Case
x = 3
case x
when 1 then puts "1"
when 2 then puts "2"
when 3 then puts "3"
else puts "none"
end
#.. blocs, procs and lambdas
#here's are two ways to pass blocs to methods

# # block is added as an undefined argument to be called by yield
# def yield_name(name)
# 	yield("Kim")
# 	yield(name)
# end

# yield_name("Eric")  {|n| puts "My name is #{n}"}

# # block is passed to the method as a Proc by being defined in the arguments and then called

# def yield_age(age, &block)
# 	block.call(age)
# 	block.call(32)
# end

# yield_age(12) {|age| puts "My age is #{age}"}

# #Using procs
# my_proc = Proc.new {|num| num % 20 == 0}

# puts (1..100).to_a.select(&my_proc) #method calls Proc as a Bloc by using & sign and passes it to a method that expects a block

# #pass the proc to the method expecting a block and transfor
# def proc_yielder(num)
# 	yield(num)
# end

# puts proc_yielder(20, &my_proc) 

# #define proc as an argument and then pass it in an use call
# def call_proc num, someProc  
# 	someProc.call(num)
# end

# puts call_proc(20, my_proc) 

# #Lambda now - like a proc but returns control to calling method and also sensitive to arguments

# def lamda_demo a_lambda
# 	a_lambda.call
# 	puts "I got printed"
# end

# lamda_demo(lambda{puts "I'm a lambda"})

# #you can also pass a lambda with & as you would a Proc
# filter = lambda {|item| item.is_a? Integer}

# puts ["stew", 2.0, 3].select(&filter)

# Other ||= (for is not nil) .upto(val) 
