=begin
require 'test/unit'

def FindLargestPalindrome()
productsArray = []
palindromeArray = []
for y in (100..999)
	for x in (100..999)
		productsArray << x*y
	end
end
palindromeArray = productsArray.uniq.sort.select { |num| num.to_s == num.to_s.reverse }
answer = palindromeArray.last
puts "\n"
puts answer
puts "\n"
answer
end

class PalindromeTest < Test::Unit::TestCase
	def testFindLargestPalindrome()
		assert_equal 906609, FindLargestPalindrome()
	end
end
=end

require 'test\unit'

def isPal?(number)
	if number.to_s == number.to_s.reverse
	return true
	else
	return false
	end
end

def multiplyNums()
storageArray = []
	for x in 100..999
		for y in 500..999
		ans = x*y
			if isPal?(ans) == true
			storageArray << x*y
			end
		end
	end
puts storageArray.sort.max
return storageArray.sort.max
end

class PalindromeTest < Test::Unit::TestCase
	def testmultiplyNums
		assert_equal 906609, multiplyNums()
	end
end
