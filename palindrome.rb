
# This takes a string and finds the longest palindrome.

puts "Please enter a string:"
str = gets.strip

palindromes = []

0.upto(str.size) do |x|
	str.size.downto(0) do |y|
		s = str[x,y]
		if s == s.reverse && s.size > 2
			palindromes << s
		end
	end
end

puts palindromes



























palindromes = []

0.upto(str.size) do |x|
	str.size.downto(0) do |y|
		s = str[x,y] 
		if s == s.reverse && s.size >= 3
			palindromes << s
		end
	end
end

palindromes = palindromes.sort_by{ |z| z.length }.reverse
puts palindromes[0]