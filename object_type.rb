array = [ "one", 2, 3.5, true, "4", [ 2, 3, 6 ], { coast: "west", city: "Seattle" } ]
classes = []
counts = Hash.new 0

array.each do |obj|
	classes << obj.class
end

classes.each do |obj|
	counts[obj] += 1
end

puts counts
