#Learn to Program/Chris Pine/Odin Project
#Orange Trees

class OrangeTree
  #does not immediately produce fruit but eventually does
  def initialize name
    @name = name #that's right your orange tree has a name
    @height = 1 #height is in feet
    @age = 1


  end
  def height #returns height

  end

  def age


  end

  def oneYearPasses #ages tree one year
    @height = @height += 1 #tree grows taller
    @age = @age += 1
    #after multiple years, tree dies
    #unpicked oranges must fall of the tree
  end

  def countTheOranges #counts the oranges produced
    #returns the number of oranges on the tree
    #increases @orangeCount each year, maybe peaks then drops
  end

  def pickAnOrange
    @orangeCount = @orangeCount -= 1 #reduces @orangeCount by 1
    puts "That is one tasty orange. :)"#sting telling the delicousness of the oranges
    #or no more oranges to pick this year

  end
end
