#Learn to Program/Chris Pine/Odin Project
#Chapter 10 Tasks/Blocks and Procs

$nestingDepth = 0
$tab = '..'

def log descriptionOfBlock, &someBlock
  puts $tab*$nestingDepth+"We have started the "+descriptionOfBlock+" block, rejoice"
  puts " "
  $nestingDepth = $nestingDepth + 1
  blocksReturn = someBlock.call
  $nestingDepth = $nestingDepth -1
  puts $tab*$nestingDepth+"we have finished the "+descriptionOfBlock+" block"
  puts $tab*$nestingDepth+"Block Returns: "+blocksReturn.to_s
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
    log "innerest most" do
      "Testing Testing 1, 2, 3"
      log "JK, here is a even more interior" do
        "Depth"
      end
    end
  end
  "done"
end
