// This will return the average age difference between mother and child in Eloquent Javascript example.

function average(array) {
  function plus(a, b) { return a + b; }
  return array.reduce(plus) / array.length;
}

var byName = {};
ancestry.forEach(function(person) {
  byName[person.name] = person;
});

var hasMother = function(person) {
  if (person.mother != null)
  	return person;
}

console.log(ancestry.filter(hasMother));