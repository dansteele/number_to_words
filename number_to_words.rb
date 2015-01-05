module NumberToWords
  def to_words(number = self)
  end
end

class Fixnum
  include NumberToWords
end