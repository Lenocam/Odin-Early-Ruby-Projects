#Learn to Program/Chris Pine/Odin Project
#Orange Trees

class OrangeTree
  #does not immediately produce fruit but eventually does
  def initialize name
    @name = name #that's right your orange tree has a name
    @height = 4 #height is in 100
    @age = 1
    @orangeCount = 0

    puts @name + ' the sapling is planted'
    puts "Tree Stats"
    puts "Orange Count: " + @orangeCount.to_s
    puts "Tree Height: " + @height.to_s
    puts "Tree Age: " + @age.to_s
    puts " "
  end

  def height
    puts @name + " the tree is " + @height.to_s + " fictional units tall."
  end

  def oneYearPasses #ages tree one year
    if @height <= 15
      @height += 1 #tree grows taller
    end
    @age    += 1
    countTheOranges

    puts "A year has passed"
    puts " "
    puts "Orange Count: " + @orangeCount.to_s
    puts "Tree Height: " + @height.to_s
    puts "Tree Age: " + @age.to_s
    puts " "
    #after multiple years, tree dies
    #unpicked oranges must fall of the tree

  end

  def countTheOranges #counts the oranges produced
    if (@age > 1 and @age < 10)
      @orangeCount += (@age * 2)
    end
    if @age > 11
      @orangeCount -= 2
    end

    #returns the number of oranges on the tree
    #increases @orangeCount each year, maybe peaks then drops
  end

  def pickAnOrange
    @orangeCount = @orangeCount -= 1 #reduces @orangeCount by 1
    puts "That is one tasty orange. :)"#sting telling the delicousness of the oranges
    #or no more oranges to pick this year
    puts "Now you have " + @orangeCount.to_s + " oranges left on your tree."
  end
end

tree = OrangeTree.new 'Frank'
tree.oneYearPasses
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
tree.height
