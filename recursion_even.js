
// This uses recursion to declare the veracity of a number being even.

function isEven(n) {
	n = Math.abs(n)
	if (n === 0)
		return true;
	else if (n === 1)
		return false;
	else 
		return isEven(n - 2)
}