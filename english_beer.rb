def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number
  write = left/1000000000000     # How many trillion left to write out?
  left  = left - write*1000000000000  # Subtract off those trillion.

  if write > 0
    trillion  = englishNumber write
    numString = numString + trillion + ' trillion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000000     # How many billion left to write out?
  left  = left - write*1000000000  # Subtract off those billion.

  if write > 0
    billion  = englishNumber write
    numString = numString + billion + ' billion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000     # How many million left to write out?
  left  = left - write*1000000  # Subtract off those million.

  if write > 0
    million  = englishNumber write
    numString = numString + million + ' million'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000     # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those thousands.

  if write > 0
    # Now here's a really sly trick:
    thousand  = englishNumber write
    numString = numString + thousand + ' thousand'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/100     # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundred  = englishNumber write
    numString = numString + hundred + ' hundred'
    #numString = numString + hundreds + ' hundred'

    #puts "write: " + write.to_s
    #puts "left: " + left.to_s
    #puts "numString: " + numString.to_s
    #puts " "

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts 'Tell me a number and I\'ll tell you that word in English'
number = gets.chomp
number = number.to_i
puts ' '

while number > 1
  puts englishNumber(number).capitalize + ' bottles of beer on the wall, ' + englishNumber(number) + ' bottles of beer.'
  puts 'Take one down and pass it around ,' + englishNumber(number - 1) + ' bottles of beer on the wall'
  puts ' '
  number -= 1
  if number == 1
    puts englishNumber(number).capitalize + ' bottle of beer on the wall, ' + englishNumber(number) + ' bottle of beer.'
    puts 'Take one down and pass it around ,' + englishNumber(number - 1) + ' bottle of beer on the wall'
    puts ' '
  end
end
