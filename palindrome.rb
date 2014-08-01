puts 'Enter a string:'
str = gets.strip.downcase
p = []

str.size.downto(0) do |x|
	0.upto(str.size - x) do |y|
		s = str[y,x]
		if s == s.reverse && if s.reverse.size >= 3
			p << s
		end
		end
	end
end

p = p.sort_by{ |z| z.length }.reverse
puts p[0]
