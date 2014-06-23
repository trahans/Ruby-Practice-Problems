	
def getPosition(num)
count = 0

	while num-2**count >= 0
	count += 1
	end
	
position = count	
return position						
end


def binaryConverter(inputInteger)

binaryArray = [0]
workingNum = inputInteger 			
pwrOf2 = getPosition(workingNum)-1
	
	until getPosition(workingNum) == 0
	binaryArray[getPosition(workingNum)-1] = 1
	workingNum -= 2**(getPosition(workingNum)-1)
	end
	
	i = 0
	until i == getPosition(inputInteger)
		if binaryArray[i] == nil
		binaryArray[i] = 0
		else 
		binaryArray[i]
		end
	i += 1
	end
			
answer = binaryArray.join.to_s.reverse
return answer
end

puts "Enter an Integer"
puts binaryConverter(Integer(gets.chomp))
