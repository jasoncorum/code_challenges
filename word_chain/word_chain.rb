require_relative 'lib/levenshtein'

# Loads the dictionary .txt file
dictionary = []
File.read("dictionary.txt").each_line do |line|
  dictionary << line.chop
end

leven_one = []
leven_path = []

# User defines start and end words.
puts "Please enter your first word:"
a = gets.strip

puts "Please enter your second word:"
b = gets.strip

puts "Calculating the word chain..."

# Calculates Levenshtein distance between the start and end words and finds all words that 
dist = Levenshtein.distance(a,b)
leven = []

0.upto(dictionary.length - 1) do |x|
	hash = {}
	if Levenshtein.distance(a, dictionary[x]) <= dist && Levenshtein.distance(b, dictionary[x]) <= dist
		hash[:dist_a] = Levenshtein.distance(a, dictionary[x])
    hash[:dist_b] = Levenshtein.distance(b, dictionary[x])
    hash[:word] = dictionary[x]
		leven << hash
  end
end

start = 0
d = dist

while start <= dist
  0.upto(leven.length - 1) do |x|
    if leven[x][:dist_a] == (start) && leven[x][:dist_b] == (d)
      y = leven[x][:word]
      leven_one << y
    end
  end
  start += 1
  d -= 1
end

count = 0
test = 0
test_2 = 1

while count < Levenshtein.distance(a,b)

  if leven_one.size < Levenshtein.distance(a,b)
    puts "No word chain exists for:"
    count = Levenshtein.distance(a,b)
  elsif leven_one[test + 2].nil? == true && Levenshtein.distance(leven_one[test], leven_one[test + 1]) == 1
    leven_path << leven_one[test]
      test += 1
      test_2 += 1
      count += 1
  elsif Levenshtein.distance(leven_one[test], leven_one[test + 1]) == 1 && Levenshtein.distance(leven_one[test + 1], leven_one[test + 2]) == 1
    leven_path << leven_one[test]
      test += 1
      test_2 += 1
      count += 1
 elsif Levenshtein.distance(leven_one[test], leven_one[test + 1]) == 1 && Levenshtein.distance(leven_one[test + 1], leven_one[test + 3]) == 1
    leven_path << leven_one[test]
      test += 1
      test_2 += 1
      count += 1
  else
    leven_one.delete_at(test_2)
    test = test
    test_2 = test_2
  end
end

leven_path << a
leven_path << b
puts leven_path.uniq
