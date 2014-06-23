puts "\n"

puts %{Lets find the difference between the square of the sum of the natural
numbers up to 100, and the sum of the squares of the elements of the same set}

puts "\n"

def SquareOfTheSum(range)
	set = range.to_a
	sum1 = 0
	set.each do |num|
	sum1 += num
	end	
	$ans1 = sum1**2
	puts "The square of the sum is #{$ans1}"
end

def SumOfTheSquares(range)
	set = range.to_a
	sum2 = 0
	set.each do |num|
	sum2 += num**2
	end
	$ans2 = sum2
	puts "The sum of the squares is #{$ans2}"
end

def FindTheDifference(a, b)
	ans3 = (a - b).abs
	puts "The difference is #{ans3}"
end

SquareOfTheSum(1..100)
SumOfTheSquares(1..100)
puts "\n"
FindTheDifference($ans1, $ans2)
puts "\n"