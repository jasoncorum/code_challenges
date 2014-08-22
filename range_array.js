
// This creates an array of all the numbers within the range of start and end.

var range = function(start , end) {
	var a = [];
	for ( start; start <= end; start++ )
		a.push(start);
	return a
}

// This adds all the numbers in the array created by range.

var sum = function(a) {
  var total = 0;
	for ( var x = 0; x <= a.length; x++ )
	total = total + a[x];
  return total
}

console.log(sum(range(1, 10)));