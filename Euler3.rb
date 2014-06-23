def PrimeFactors(n)
	allFactors = []
	return [] if n == 1

	lowest_factor = (2..n).find { |x| n%x == 0 }
		allFactors << lowest_factor
		allFactors + PrimeFactors(n/lowest_factor)
end

puts "\n"
puts PrimeFactors(98)
puts "\n"
puts PrimeFactors(600851475143).max
puts "\n"