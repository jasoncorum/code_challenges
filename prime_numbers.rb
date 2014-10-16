# Determines if a number is a prime number.

def prime(num)
	2.upto(num - 1).each do |x|
		return false if num % x == 0
		return true
	end 
end

puts prime(3)
puts prime(4)
puts prime(5)
