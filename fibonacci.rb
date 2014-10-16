
# This returns the nth digit in the Fibonacci sequence.

def fibonacci(n)
  n <= 1 ? n : n = fibonacci( n - 1 ) + fibonacci( n - 2 )
end

variables = [1, 2, 3, 4, 5, 6, 7]
variables.each do |x|
	puts fibonacci(x)
end