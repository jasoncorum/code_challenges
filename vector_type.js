// From Eloquent Javascript.

// Write a constructor Vector that represents a vector in two-dimensional space. It takes x and y parameters (numbers), which it should save to properties of the same name.

// Give the Vector prototype two methods, plus and minus, that take another vector as a parameter and return a new vector that has the sum or difference of the two vectors’ (the one in this and the parameter) x and y values.

// Add a getter property length to the prototype that computes the length of the vector—that is, the distance of the point (x, y) from the origin (0, 0).

function Vector(x,y) {
  this.x = x;
  this.y = y;
}

Vector.prototype.plus = function (v2) {
  return new Vector(this.x + v2.x, this.y + v2.y);
};

Vector.prototype.minus = function (v2) {
  return new Vector(this.x - v2.x, this.y - v2.y);
};

Object.defineProperty(Vector.prototype, "length", {
  get: function(_) { return Math.sqrt((this.x * this.x) + (this.y * this.y)); }
});

