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
      when 10
        "ten"
      when 11
        "eleven"
      when 12
        "twelve"
      when 13
        "thirteen"
      when 14
        "fourteen"
      when 15
        "fifteen"
      when 16
        "sixteen"
      when 17
        "seventeen"
      when 18
        "eighteen"
      when 19
        "nineteen"
      when 20
        "twenty"
      end
  end


def get_tens_number(number)
    number_array = number.to_s.chars.map(&:to_i)
    case number
    when 20
      return "twenty"
    when (21..29)
      puts "it was here"
     return ("twenty-" << (get_low_number (number_array[1])))
    when 30
      return "thirty"
    when (31..39)
      return ("thirty-" << (get_low_number (number_array[1])))
    when (40)
      return "forty"
    when (41..49)
      return ("forty-" << (get_low_number (number_array[1])))
    when (50)
      return "forty"
    when (51..59)
      return ("fifty-" << (get_low_number (number_array[1])))
    when (60)
      return "sixty"
    when (61..69)
      return ("sixty-" << (get_low_number (number_array[1])))
    when (70)
      return "seventy"
    when (70..79)
      return ("seventy-" << (get_low_number (number_array[1])))
    when (80)
      return "eighty"
    when (81..89)
      return ("eighty-" << (get_low_number (number_array[1])))
    when (80)
      return "eighty"
    when (81..89)
      return ("eighty-" << (get_low_number (number_array[1])))
    when (90)
      return "ninety"
    when (91..99)
      return ("ninety-" << (get_low_number (number_array[1])))
    end

  end

  def get_hundreds_number(number)
    number_array = number.to_s.chars.map(&:to_i)
    hundred_number = number_array[0]
    number_array.delete_at(0)
    remainder = number_array.join(',').delete(",").to_i

    # puts "Number: #{number}"
    # puts "Number Array: #{number_array}"
    # puts "Hundred Number: #{hundred_number}"
    # puts "number_array after deletion: #{number_array}"
    # puts "Remainder: #{remainder} and is type #{remainder.class}"
    # puts get_tens_number(remainder).class


    case hundred_number

    when 1
      return ("one-hundred and " << (get_tens_number(remainder)))
    when 2
      return ("two-hundred and " << (get_tens_number(remainder)))
    when 3
      return ("three-hundred and " << (get_tens_number(remainder)))
    when 4
      return ("four-hundred and " << (get_tens_number(remainder)))
    when 5
      return ("five-hundred and " << (get_tens_number(remainder)))
    when 6
      return ("six-hundred and " << (get_tens_number(remainder)))
    when 7
      return ("seven-hundred and " << (get_tens_number(remainder)))
    when 8
      return ("eight-hundred and " << (get_tens_number(remainder)))
    when 9
      return ("nine-hundred and " << (get_tens_number(remainder)))
    end



  end