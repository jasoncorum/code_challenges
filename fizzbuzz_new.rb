def fizzbuzz(num)
	(num % 3 == 0) && (num % 5 == 0) ? "fizzbuzz"
	: (num % 3 == 0) ? "fizz"
	: (num % 5 == 0) ? "buzz"
	: num
end

0.upto(100) do |num|
	puts fizzbuzz(num)
end