#Learn to Program/Chris Pine/Odin Project
#Chapter 10 Tasks/Blocks and Procs

#GrandFather Clock
#Method
def grandClock someProc
  tick = Time.now.hour.to_i
  if tick == 0
    tick = 12
  else tick > 12
    tick = tick - 12
  end
  someProc.call
end
#Variables
lineWidth = 60
contents = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 72', 'Chapter 3: Variables', 'page 118']


#Procs
#DONG
tock = Proc.new do
  puts "DONG!"
end

#table of contents

table = Proc.new do
  puts contents[0].center lineWidth
  puts ' '
  i = 0
  until i == 6
    puts contents[i += 1].ljust(lineWidth/2) + contents[i += 1].rjust(lineWidth/2)
  end
end

#call
grandClock tock
grandClock table
