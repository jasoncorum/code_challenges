module Levenshtein
 
  def self.distance(a, b)
    a, b = a.downcase, b.downcase
    costs = Array(0..b.length) # i == 0
    (1..a.length).each do |i|
      costs[0], nw = i, i - 1  # j == 0; nw is lev(i-1, j)
      (1..b.length).each do |j|
        costs[j], nw = [costs[j] + 1, costs[j-1] + 1, a[i-1] == b[j-1] ? nw : nw + 1].min, costs[j]
      end
    end
    costs[b.length]
  end
 
end

dictionary = []
File.read("dictionary.txt").each_line do |line|
  dictionary << line.chop
end

leven = []
leven_ones = []

puts "Please enter your first word:"
a = gets.strip


puts "Please enter your second word:"
b = gets.strip


dist = Levenshtein.distance(a,b)

0.upto(dictionary.length - 1) do |x|
	hash_a = {}
  hash_b = {}
	if Levenshtein.distance(a, dictionary[x]) <= dist
		hash_a[:dist] = Levenshtein.distance(a, dictionary[x])
		hash_a[:word] = dictionary[x]
    hash_a[:a_or_b] = "a"
		leven << hash_a
  end
    if Levenshtein.distance(b, dictionary[x]) <= dist
    hash_b[:dist] = Levenshtein.distance(b, dictionary[x])
    hash_b[:word] = dictionary[x]
    hash_b[:a_or_b] = "b"
    leven << hash_b
	end
end

leven = leven.group_by { |x| x[:word] }.values.select { |y| y.size > 1 }.flatten

puts leven
