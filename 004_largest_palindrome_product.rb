# Largest palindromic Product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# start with 10, side a first, multiply it to side b, determine if product is palindrome
# collect palindromes in an array and sort it , and get the max

def is_palindrome(num, debug=false)
	test_val = num
	rev = 0
	while test_val > 0
		mod = test_val % 10 #get last digit
		rev = (rev * 10) + mod #reconstruct reversed
		test_val = test_val / 10
	end
	puts num == rev if debug
	num == rev
end

set_a = 10
set_b = 10
limit = set_a * 10
palindromes = []
(set_a...limit).to_a.each do |a|
	(set_b...limit).to_a.each do |b|
		product = a * b
		palindromes << product if is_palindrome(product)
	end
end
puts palindromes.sort.max