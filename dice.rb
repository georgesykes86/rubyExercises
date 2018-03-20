class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat (num)
    if num > 0 && num <= 6
      @numberShowing = num
    else
      puts "Even i can't cheat that much"
    end
  end

end

myDice = Die.new
puts myDice.showing
myDice.cheat(7)
puts myDice.showing
myDice.cheat(5)
puts myDice.showing