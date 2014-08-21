
# This is the beginning of a failed attempt to score bowling in Ruby.

puts "Please enter your score:"

# 3.down_to(1) do |x|

ball = gets.strip.to_i

	if ball == 10
			puts "You rolled a strike!"
			puts "Please enter your next score:"
			ball_two = gets.strip.to_i
		if ball_two == 10
			puts "You rolled another strike!"
			puts "Please enter your next score:"
			ball_three = gets.strip.to_i
		end
		if ball_three == 10
			puts "You rolled a turkey!"
		end
		score = ball + ball_two + ball_three
		
		puts score
	
	elsif ball > 10
		puts "Please enter your next score:"
		ball_two = gets.strip.to_i
		if ball + ball_two == 10
			puts "You rolled a spare!"

	end
# end

