# Telephone Words

# Given a list of integers, print out all possible words that can be spelled by using the telephone letter mapping. 

# For example, 
# 	telephoneWords([2,5])

# would print out:
# 	AJ, AK, AL, BJ, BK, BL, CJ, CK, CL


def telephoneWords( number_array )
	two 	= [ "A", "B", "C" ]
	three = [ "D", "E", "F" ]
	four 	= [ "G", "H", "I" ]
	five 	= [ "J", "K", "L" ]
	six 	= [ "M", "N", "O" ]
	seven	= [ "P", "Q", "R", "S" ]
	eight	= [ "T", "U", "V" ]
	nine	= [ "W", "X", "Y", "Z" ]

	parsed_numbers = []

	number_array.each do | num |
		case num
		when 2
			parsed_numbers << two
		when 3
			parsed_numbers << three
		when 4
			parsed_numbers << four
		when 5
			parsed_numbers << five
		when 6
			parsed_numbers << six
		when 7
			parsed_numbers << seven
		when 8
			parsed_numbers << eight
		when 9
			parsed_numbers << nine			
		end		
	end

	starting_array = parsed_numbers[0]
	parsed_numbers.shift.flatten

	final_array = starting_array.product(*parsed_numbers)
	final_array.each do | response |
		puts response.join
	end
end

telephoneWords( [ 2,5 ])
