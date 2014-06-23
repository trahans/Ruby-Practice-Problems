IntegerArray = Array(1..999)
MultiplesOf5 = IntegerArray.select {|num| num % 5 == 0}
MultiplesOf3 = IntegerArray.select {|num| num % 3 == 0 and num % 5 != 0}

def SumMultiplesOf3and5()
sum = 0
	MultiplesOf5.each do |num|
		sum += num
	end

	MultiplesOf3.each do  |num|
		sum += num
	end
	
puts "\n"
puts sum
puts "\n"
end

SumMultiplesOf3and5()