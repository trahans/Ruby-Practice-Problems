require 'test/unit'

def is_prime(num)
	for d in 2..(Math.sqrt(num))
		if (num % d) == 0
		return false
		end
	end
	true
 end

def Find_nth_prime(n)
i = 2
count = 0
	while count < n
		if is_prime(i) == true
		count += 1
		end
	i += 1
	end
ans = i-1
puts "The nth prime number, where n=#{n}, is #{ans}"
return ans
end

class PrimesTest < Test::Unit::TestCase
	def testFind_nth_prime
		assert_equal 104743, Find_nth_prime(10001)
	end
end
