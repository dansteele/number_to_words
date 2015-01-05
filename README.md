TDD - Numbers to Words
======================

TO RUN
------

> ruby numbers_to_words_spec.rb

TODO
----

* Repeatedly run the test until you get get test failures, rather than any Ruby exceptions. You should see

```
1) Failure:
to_words#test_0001_should handle individual numbers [numbers_to_words_spec.rb:7]:
Expected: "one"
  Actual: nil
```

* Add just enough code to your `to_words` method to make the test pass.

* Add the following code to your spec.

```
it "should handle the teens" do
  16.to_words.must_equal("sixteen")
  19.to_words.must_equal("nineteen")
end
```

* Run the updated spec, *see it fail*, and then implement the solution. N.B. the
solution only has to work for numbers less than twenty; is your solution trying
to implement more than what is required?

* Add code to your spec that tests words up to one hundred. See the test fail
first, then implement the solution. What changes are needed? If you need to
implement any further methods, write them *test first*.

* Once you achieve one hundred, repeat the process up until one thousand.

* Once you achieve one thousand, repeat the process up until one million.