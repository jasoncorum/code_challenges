puts "Please enter the amount of change needed. If over 1.00 please enter the total amount in cents (ie. $1.05 = 105):"

change = gets.strip.to_i

money = { quarter: 25, dime: 10, nickel: 5 }
coins = {}

coins[:quarters] = change / money[:quarter]
change = change % money[:quarter]

coins[:dimes] = change / money[:dime]
change = change % money[:dime]

coins[:nickels] = change / money[:nickel]
coins[:pennies] = change % money[:nickel] 

puts coins
