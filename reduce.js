
// This will reduce an array of arrays to a single array with all the values.

var arrays = [[1, 2, 3], [4, 5], [6]];

function reduce(array, con) {
	var new_array = [];
	for (var i = 0; i < array.length; i++)
		new_array = con(new_array, arrays[i]);
	return new_array;
}

console.log(reduce(arrays, function(a, b) {
	return a.concat(b);
}));