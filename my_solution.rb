# Initial Solution

def super_fizzbuzzz(array)
  array.collect do |i|
    if i % 15 == 0
      "FizzBuzz"
    elsif i % 5 == 0
      "Buzz"
    elsif i % 3 == 0
      "Fizz"
    else
      i
    end
  end
end


# Refactored Solution

def super_fizzbuzz(array)
  array.collect do |i|
    i % 15 == 0 ? ('FizzBuzz') : i % 5 == 0 ? ('Buzz') : i % 3 == 0 ? ('Fizz') : i
  end
end


# Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert {super_fizzbuzz([3]) == ['Fizz']}
assert {super_fizzbuzz([5]) == ['Buzz']}
assert {super_fizzbuzz([15]) == ['FizzBuzz']}
assert {super_fizzbuzz([1, 2, 3]) == [1, 2, 'Fizz']}
assert {super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]}
assert {super_fizzbuzz([45, 9, 25, 3, 5, 15]) == ['FizzBuzz', 'Fizz', 'Buzz', 'Fizz', 'Buzz', 'FizzBuzz']}