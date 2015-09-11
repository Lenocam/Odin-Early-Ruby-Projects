#Learn to Program/Chris Pine/Odin Project
#Chapter 10 Tasks/Blocks and Procs

def log descriptionOfBlock, &someBlock
  puts "We have started the "+descriptionOfBlock+" block, rejoice"
  puts " "
  blocksReturn = someBlock.call
  puts "we have finished the "+descriptionOfBlock+" block"
  puts "Block Returns: "+blocksReturn.to_s
  puts " "
end

log "outermost" do
  log "inner" do
    puts "give me a number"
    number = gets.chomp
    #number = number.to_i

    25.times do
      number = number + number
    end

    # Show the number of digits in this HUGE number.
    number.to_s.length.to_i
  end

  log "inner 2" do
    'Sequal not as good as the original?'
  end
end
