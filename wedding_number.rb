module WeddingNumber
  def wedNumber number
    if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

    # No more special cases! No more returns!

    numString = ''  # This is the string we will return.

    onesPlace = ['one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                 'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    left  = number

    write = left/1000000 #how many million
    left = left - write*1000000

    if write > 0
      millions = wedNumber write
      numString = numString + millions + ' million'

      if left > 0
        numString = numString + ' and '
      end
    end

    write = left/1000 #how many thousands
    left = left - write*1000 #subtract those thousands

    if write > 0
      thousands = wedNumber write
      numString = numString + thousands + ' thousand'

      if left > 0 
        numString = numString + ' and '
      end
    end


    write = left/100          # How many hundreds left to write out?
    left  = left - write*100  # Subtract off those hundreds.

    if write > 0
      # Now here's a really sly trick:
      hundreds  = wedNumber write
      numString = numString + hundreds + ' hundred'
      # That's called "recursion". So what did I just do?

      if left > 0
        # So we don't write 'two hundredfifty-one'...
        numString = numString + ' and '
      end
    end

    write = left/10          # How many tens left to write out?
    left  = left - write*10  # Subtract off those tens.

    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tenty-two" instead of "twelve",
        # we have to make a special exception for these.
        numString = numString + teenagers[left-1]
        # Since we took care of the digit in the ones place already,
        # we have nothing left to write.
        left = 0
      else
        numString = numString + tensPlace[write-1]

      end

      if left > 0
        # So we don't write 'sixtyfour'...
        numString = numString + ' and '
      end
    end

    write = left  # How many ones left to write out?
    left  = 0     # Subtract off those ones.

    if write > 0
      numString = numString + onesPlace[write-1]

    end

    numString
  end
end