def fibonacciSumOfEvens()
fib = Array.new
fib[0]=1
fib[1]=2
n = 2
nextResult = 0
	until nextResult>=4000000
	nextResult = fib[n-2]+fib[n-1]
	fib << nextResult
	n+=1
	end
sequence = fib.take(fib.size - 1)
eveNsequence = sequence.select { |num| num % 2 == 0 }
sum = 0
	eveNsequence.each do |num|
	sum += num
	end
puts sum
end

puts "\n"
fibonacciSumOfEvens()
puts "\n"