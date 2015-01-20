require 'minitest/autorun'
require './number_to_words'

class NumberToWordsTest < MiniTest::Test
  describe "to_words" do
    it "should handle individual numbers" do
      1.to_words.must_equal("one")
      2.to_words.must_equal("two")
      3.to_words.must_equal("three")
      11.to_words.must_equal("eleven")
      12.to_words.must_equal("twelve")
    end

    it "should handle the teens" do
      16.to_words.must_equal("sixteen")
      19.to_words.must_equal("nineteen")
    end

    it "should handle less than 100" do
      30.to_words.must_equal("thirty")
      45.to_words.must_equal("forty-five")
      99.to_words.must_equal("ninety-nine")
    end
  end
end