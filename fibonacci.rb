
# This returns the nth digit in the Fibonacci sequence.

def fibonacci(n)
  n <= 1 ? n : n = fibonacci( n - 1 ) + fibonacci( n - 2 )
end
puts fibonacci(4)