# This is a complete example of FizzBuzz 
# using an assert method to test my code.
# Essentially, all the assert method does is
# throw an error if my expectation evaluates to false
 
# an even simpler way to test would be by just using puts.
# for example: puts fizzbuzz(5) == buzz will print out true to my terminal
# if something prints false that means its a failing case
 
def fizzbuzz(number)

	(number % 3 == 0) && (number % 5 == 0) ? "fizzbuzz"
	: (number % 3) == 0 ? "fizz"
	: (number % 5) == 0 ? "buzz"
	: number

end
 
1.upto(100) do |num|
  puts fizzbuzz(num)
end
 
 
def assert(truthy)
  raise "There was an error" if !truthy
end
 
# assert fizzbuzz(1) == 1
# assert fizzbuzz(2) == 2
# assert fizzbuzz(3) == 'fizz'
# assert fizzbuzz(4) == 4
# assert fizzbuzz(5) == 'buzz'
# assert fizzbuzz(9) == 'fizz'
# assert fizzbuzz(15) == 'fizzbuzz'

