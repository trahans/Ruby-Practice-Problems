require 'test\unit'

def countDivisors(num)
count = 0
	for d in 1..Math.sqrt(num).floor-1
		if (num % d) == 0
			count += 2
		end
	end
	if num % Math.sqrt(num) == 0
		count += 1
	end
return count
end

def findTriangleNumWith_500_Divisors()
sum = 0
i = 1
result = 0
	while result < 500
		sum += i
		i += 1
		result = countDivisors(sum)
	end
puts sum
return sum
end

class TestTriangleNums < Test::Unit::TestCase
	def testfindTriangleNumWith_500_Divisors
		assert_equal 76576500, findTriangleNumWith_500_Divisors()
	end
end

#	First triangle number to have more than 500 divisors