#JumpstartLab/Ruby in 100 Minutes/Odin Project

#Objects

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number, :favorite_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"

    def favorite_number
      23
    end

  end
end

reed = Student.new
reed.first_name = "Reed"
reed.introduction('Kelly')
puts "Reed's favorite number is #{reed.favorite_number}."
