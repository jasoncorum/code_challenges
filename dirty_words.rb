
puts "Please post a string and we'll check for dirty words."
string = gets.strip


dirty_words = ["fuck", "shit", "piss"]
found_words = []

0.upto(string.size) do |x|
	string.size.downto(4) do |y|
		str = string[x,y]
		found_words << str
	end
end

if found_words.any?{ |x| dirty_words.include?(x) }
	puts "Naughty"
else
	puts "Nice"
end