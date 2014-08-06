
puts "Enter a number:"

num = gets.strip.to_i
# count = num
# array = []

# while count > 0 do
# 	response = num * count - 1
# 	count = count - 1
# 	array << response
# end

# puts array

# final = array.inject(:*)

# puts final

final = num.downto(1).inject(:*)
puts final