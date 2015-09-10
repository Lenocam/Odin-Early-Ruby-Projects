#Learn to Program/Chris Pine/Odin Project
#Chapter 9 Tasks: Dice/instance variables

class Die
  def initialize
    roll
  end

  def set
    puts "Change the die, pick a number from 1 - 6."
    choose = gets.chomp
    choose = choose.to_i
    @numberShowing = choose if(choose > 0 and choose < 7)
  end

  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def showing
    @numberShowing
  end
end

die = Die.new
puts "Showing: #{die.showing}"
puts "Set: #{die.set}"
puts "Showing again: #{die.showing}"
