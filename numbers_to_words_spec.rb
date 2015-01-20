require 'minitest/autorun'
require './number_to_words'

class NumberToWordsTest < MiniTest::Test
  describe "to_words" do
    it "should handle individual numbers" do
      1.to_words.must_equal("one")
      2.to_words.must_equal("two")
      3.to_words.must_equal("three")
    end

    it "should handle the teens" do
      16.to_words.must_equal("sixteen")
      19.to_words.must_equal("nineteen")
    end

    it "should handle less than 100" do
      30.to_words.must_equal("thirty")
      45.to_words.must_equal("forty five")
      99.to_words.must_equal("ninety nine")
    end

    it "should handle less than 1000" do
      123.to_words.must_equal("one hundred twenty three")
      454.to_words.must_equal("four hundred fifty four")
      832.to_words.must_equal("eight hundred thirty two")
    end

    it "should handle less than 10,000" do
      1234.to_words.must_equal("one thousand two hundred thirty four")
      5248.to_words.must_equal("five thousand two hundred forty eight")
      9999.to_words.must_equal("nine thousand nine hundred ninety nine")
    end

    it "should handle less than 100,000" do
      19999.to_words.must_equal("nineteen thousand nine hundred ninety nine")
      17432.to_words.must_equal("seventeen thousand four hundred thirty two")
      54321.to_words.must_equal("fifty four thousand three hundred twenty one")
      34492.to_words.must_equal("thirty four thousand four hundred ninety two")
      28792.to_words.must_equal("twenty eight thousand seven hundred ninety two")
      49000.to_words.must_equal("forty nine thousand")
    end

    it "should handle less than 100,000,000" do
      432676.to_words.must_equal("four hundred and thirty two thousand six hundred seventy six")
      874243.to_words.must_equal("eight hundred and seventy four thousand two hundred forty three")
      999999.to_words.must_equal("nine hundred and ninety nine thousand nine hundred ninety nine")
      500001.to_words.must_equal("five hundred thousand and one")
      400117.to_words.must_equal("four hundred thousand and seventeen")
    end
  end
end