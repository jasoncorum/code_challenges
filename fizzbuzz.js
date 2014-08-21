
// Fizzbuzz in Javascript

for (var num = 1; num <= 100; num ++ ) {
  console.log( num % 3 === 0 && num % 5 === 0 ? "FizzBuzz" : 
  	num % 3 === 0 ? "Fizz": 
  	num % 5 === 0 ? "Buzz": 
  	num );
}