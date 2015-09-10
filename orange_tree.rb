#Learn to Program/Chris Pine/Odin Project
#Orange Trees

class OrangeTree
  #does not immediately produce fruit but eventually does
  def initialize name
    @name = name #that's right your orange tree has a name
    @height = 2 #height is in fictional units
    @age = 1
    @orangeCount = 0
    @dead = false

    puts "You planted " + @name + " the happy orange tree."
    puts " "
  end

  def height
    if @height <= 15
      @height += 1 #tree grows taller
    end
    puts @name + " the tree is " + @height.to_s + " fictional units tall."
    puts " "
  end

  def dead     #after multiple years, tree dies
    if @age == 17
      @dead = true
      puts @name + " is DEAD!!!!"
    end
  end

  def oneYearPasses #ages tree one year
    dead
    if @dead == false
      endOfSeason     #unpicked oranges must fall of the tree
      @age += 1
      countTheOranges
      if (@age <= 2)
        puts "A year has passed and " + @name + " is " + @age.to_s
      else
        puts "Another year has passed and " + @name + " is " + @age.to_s
      end
      height
      puts "There are " + @orangeCount.to_s + " oranges hanging from the branches of this happy orange tree."
      puts " "
    end


  end
  def endOfSeason
    @orangeCount = 0
  end

  def countTheOranges #increases @orangeCount each year, maybe peaks then drops
    if @dead == false
      if (@age > 1 and @age < 10)
        @orangeCount += (@age * 4)
      elsif (@age > 11 and @age < 16)
        @orangeCount += (@age * 3)
      else
        @orangeCount += (@age * 2)
      end
      return @orangeCount
    end
  end

  def pickAnOrange
    if @dead == false
      puts "You went out to " + @name + " to pick an orange."
      if @orangeCount > 0
        @orangeCount = @orangeCount -= 1 #reduces @orangeCount by 1
        puts "That is one tasty orange. :)"#string telling the delicousness of the oranges
      else       #or no more oranges to pick this year
        puts "You greedy SOB, there are no oranges. Now you go hungry." #attitude from an omnipotent observer
      end
      puts " "
      if @orangeCount > 0
        puts "Now you have " + @orangeCount.to_s + " delicous oranges remaining."
      else
        puts @name + " had zero oranges when you got here. " + @name +" still has zero oranges."
      end
      puts " "
    end
  end
end

tree = OrangeTree.new 'Frank'
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
