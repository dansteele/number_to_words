module NumberToWords
  def to_words(number = self)
    number_array = number.to_s.chars.map(&:to_i)
    puts number_array.inspect
    methods = [:get_low_number, :get_tens_number, :get_hundreds_number]
    full_number = []

    # number_array.each_with_index do |value, index|
    #   puts "value is: #{value.inspect}"
    #   number_value = self.send(methods[number_array.length-1-index],(value))
    #   puts "Number value returned back: #{number_value}"
    #   full_number << number_value
    #   puts "#{full_number}"
    # end

    number_array.reverse.each_with_index do |value, index|
      number_value = self.send(methods[index],(value))
      full_number << number_value
    end
    returned_number = ""
    full_number.reverse.each {|word| returned_number << word}
    return returned_number
  end

  def get_low_number(number)
    case number
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    end
  end

  def get_tens_number(tens)
  case tens
    # when 1
    #   "one"
    when 2
      "twenty "
    when 3
      "thirty "
    when 4
      "forty "
    when 5
      "fifty "
    when 6
      "sixty "
    when 7
      "seventy "
    when 8
      "eighty "
    when 9
      "ninety "
    end
  end

  def get_hundreds_number(arg)
      case tens
    when 1
      "one"
    when 2
      "twenty"
    when 3
      "thirty"
    when 4
      "forty"
    when 5
      "fifty"
    when 6
      "sixty"
    when 7
      "seventy"
    when 8
      "eighty"
    when 9
      "ninety"
    end

  end

end


class Fixnum
  include NumberToWords
end