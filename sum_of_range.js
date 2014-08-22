
// This sums all the numbers within the range of n1 and n2

var sum = function(n1 , n2) {
	var total = 0;
	for ( n1; n1 <= n2; n1++ )
		total = total + n1;
  	return total
}

console.log(sum(1,3))
