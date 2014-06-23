require 'test\unit'

def is_prime(num)
	for d in 2..(Math.sqrt(num))
		if (num % d) == 0
		return false
		end
	end
	true
end

def SumOfPrimesBelow_n(n)
i = 2
primes = []
	while i < n
		if is_prime(i) == true
		primes << i
		end
	i += 1
	end
sum = 0
primes.each { |i| sum += i }
return sum
end

class TestSumOfPrimes < Test::Unit::TestCase
	def testFind_nth_prime
		assert_equal 142913828922, SumOfPrimesBelow_n(2000000)
	end
end
