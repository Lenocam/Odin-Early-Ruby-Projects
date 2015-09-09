=begin
class Die

  def roll
    1 + rand(6)
  end

end
####################################
# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
  puts die.roll
end
=end

class Die
  def initialize
    roll
  end
  def set
    puts "Set the die."
    puts "Choose a number 1-6"
    @chosen = gets.chomp
    if @chosen =~ /\d/
      @chosen = @chosen.to_i
      #Need to fix restricting numbers to between 1 and 6
      if @chosen > 0 and @chosen < 7
        @numberShowing = @chosen
      end
    else
      puts "Try again numb nuts."
      puts Die.new.set
    end

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
