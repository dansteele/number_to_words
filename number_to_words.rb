module NumberToWords
  def to_words(number = self)
    number_array = number.to_s.chars.map(&:to_i)
    methods = [:get_low_number, :get_tens_number, :get_hundreds_number, :get_thousands_number, :get_tens_thousands_number, :get_hundred_thousands_number]
    full_number = []

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

  def get_hundreds_number(hundreds)
      case hundreds
    when 1
      "one hundred "
    when 2
      "two hundred "
    when 3
      "three hundred "
    when 4
      "four hundred "
    when 5
      "five hundred "
    when 6
      "six hundred "
    when 7
      "seven hundred "
    when 8
      "eight hundred "
    when 9
      "nine hundred "
    end

  end

  def get_thousands_number(thousands)
    case thousands
    when 0
      "thousand "
    when 1
      "one thousand "
    when 2
      "two thousand "
    when 3
      "three thousand "
    when 4
      "four thousand "
    when 5
      "five thousand "
    when 6
      "six thousand "
    when 7
      "seven thousand "
    when 8
      "eight thousand "
    when 9
      "nine thousand "
    end
  end

  def get_tens_thousands_number(tens_thousands)

    case tens_thousands
      when 1
        "ten "
      when 2
        "twenty "
      when 3
        "thirty "
      when 4
        "fourty "
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

  def get_hundred_thousands_number(hundred_thousands)

    case hundred_thousands
      when 1
        "one hundred and "
      when 2
        "two hundred and "
      when 3
        "three hundred and "
      when 4
        "four hundred and "
      when 5
        "five hundred and "
      when 6
        "six hundred and "
      when 7
        "seven hundred and "
      when 8
        "eight hundred and "
      when 9
        "nine hundred and "
      end
    end
  end

class Fixnum
  include NumberToWords
end