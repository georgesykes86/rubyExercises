#Test to see what moo program returns

def sayMoo numberOfMoos
  puts 'mooooooo...'*numberOfMoos
end

returnVal = sayMoo(3)
puts "Your code returned:" + returnVal.to_s