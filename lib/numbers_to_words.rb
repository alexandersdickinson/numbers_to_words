class Fixnum
  def numbers_to_words
    base_num = {'0' => 'zero', '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven',
      '8' => 'eight', '9' => 'nine'}
    tens = {'2' => 'twenty', '3' => 'thirty', '4' => 'forty', '5' => 'fifty', '6' => 'sixty', '7' => 'seventy', '8' => 'eighty',
      '9' => 'ninety'}
    teens = {'1' => 'eleven', '2' => 'twelve', '3' => 'thirteen', '4' => 'fourteen', '5' => 'fifteen', '6' => 'sixteen',
      '7' => 'seventeen', '8' => 'eighteen', '9' => 'nineteen'}
    numerals = self.to_s().reverse().split(//)
    num_word = []
    is_teen = false
    numerals.each_index do |i|
      if i % 3 == 0
        if numerals[i + 1] != nil && numerals[i + 1] == '1'
          num_word.unshift(teens.fetch(numerals[i]))
          is_teen = true
        else
          num_word.unshift(base_num.fetch(numerals[i]))
        end
      elsif i % 3 == 1
        if is_teen
          is_teen = false
          next
        else
          num_word.unshift(tens.fetch(numerals[i]))
        end
      elsif i % 2 == 0
        num_word.unshift('hundred')
        num_word.unshift(base_num.fetch(numerals[i]))
      end
    end
    
    return num_word.join(' ')
  end
end