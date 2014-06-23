def Ask(question)
	puts "\n" + question + "\n"*2
	answer = gets.chomp
return answer
end

def AskYesOrNo(question)
	valid_response = false
		while(not valid_response)
		puts "\n" + question + "\n"*2
		answer = gets.chomp.downcase
			if (answer == 'yes' or answer == 'y' or answer == 'yea' or answer == 'yeah' or answer == 'no' or answer == 'n' or answer == 'nah' or answer == 'naw' or answer == 'nay')
			valid_response = true
				if answer == 'yes' or answer == 'y' or answer == 'yea' or answer == 'yeah'
				answer = true
				else 
				answer = false
				end
			else
			puts 'Please answer "yes" or "no" (alternatively, "y" or "n" and some other forms are accepted).'
			end
		end
	return answer
end

def FindBirthday()
	reply_name = Ask("What is your name?")
	puts "\n" + "Hello, #{reply_name}." + "\n"
	ans1 = AskYesOrNo("#{reply_name}, were you born during the months from January-June?")
	ans2 = "temp"
	ans3 = "temp"
	ans4 = "temp"
	ans5 = "temp"
	ans6 = "temp"
	ans7 = "temp"
	ans8 = "temp"
	ans9 = "temp"
	ans10 = "temp"
	month = "temp"
	day = "temp"
						#Determine month of birth (string)
	if (ans1 == true)
	ans2 = AskYesOrNo("Were you born during the months from January-March?")
		if (ans2 == true)
		ans3 = AskYesOrNo("Were you born in January?")
			if (ans3 == true)
			month = "January"
			else
			ans4 = AskYesOrNo("Were you born in February?")
				if (ans4 == true)
				month = "February"
				else
				month = "March"
				end
			end
		else
		ans3 = AskYesOrNo("Were you born in April?")
			if (ans3 == true)
			month = "April"
			else
			ans4 = AskYesOrNo("Were you born in May?")
				if (ans4 == true)
				month = "May"
				else
				month = "June"
				end
			end
		end
	else
	ans2 = AskYesOrNo("Were you born during the months from July-September?")
		if (ans2 == true)
		ans3 = AskYesOrNo("Were you born in July?")
			if (ans3 == true)
			month = "July"
			else
			ans4 = AskYesOrNo("Were you born in August?")
				if (ans4 == true)
				month = "August"
				else
				month = "September"
				end
			end
		else
		ans3 = AskYesOrNo("Were you born in October?")
			if (ans3 == true)
			month = "October"
			else
			ans4 = AskYesOrNo("Were you born in November?")
				if (ans4 == true)
				month = "November"
				else
				month = "December"
				end
			end
		end
	end
		
	puts "\n" + "Okay, you were born in #{month}" + "\n"*2
	
						#Determine day of birth (string in form 'xth')
						
	ans5 = AskYesOrNo("Were you born on or before the 15th of the month?")
	ans6 = AskYesOrNo("Were you born on an odd-numbered day?")
	
	if (ans5 == true)
	ans7 = AskYesOrNo("Were you born on or before the 7th?")
		if (ans6 == true)
			if (ans7 == true)
			ans8 = AskYesOrNo("Were you born on or before the 3rd?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 3rd?")
					if (ans9 == true)
					day = "3rd"
					else
					day = "1st"
					end
				else
				ans9 = AskYesOrNo("Were you born on the 7th?")
					if (ans9 == true)
					day = "7th"
					else
					day = "5th"
					end
				end
			else
			ans8 = AskYesOrNo("Were you born on or before the 11th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 11th?")
					if (ans9 == true)
					day = "11th"
					else
					day = "9th"
					end
				else
				ans9 = AskYesOrNo("Were you born on the 15th?")
					if (ans9 == true)
					day = "15th"
					else
					day = "13th"
					end
				end
			end
		else
			if (ans7 == true)
			ans8 = AskYesOrNo("Were you born on or before the 4th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 4th?")
					if (ans9 == true)
					day = "4th"
					else
					day = "2nd"
					end
				else
				day = "6th"
				end
			else
			ans8 = AskYesOrNo("Were you born on or before the 11th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 10th?")
					if (ans9 == true)
					day = "10th"
					else
					day = "8th"
					end
				else
				ans9 = AskYesOrNo("Were you born on the 14th?")
					if (ans9 == true)
					day = "14th"
					else
					day = "12th"
					end
				end
			end
		end
	else
	ans7 = AskYesOrNo("Were you born on or before the 23rd?")
		if (ans6 == true)
			if (ans7 == true)
			ans8 = AskYesOrNo("Were you born on or before the 19th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 19th?")
					if (ans9 == true)
					day = "19th"
					else
					day = "17th"
					end
				else
				ans9 = AskYesOrNo("Were you born on the 23rd?")
					if (ans9 == true)
					day = "23rd"
					else
					day = "21st"
					end
				end
			else
			ans8 = AskYesOrNo("Were you born on or before the 27th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 27th?")
					if (ans9 == true)
					day = "27th"
					else
					day = "25th"
					end
				elsif (ans8 == false and (month == "February" or month == "April" or month == "September" or month == "June" or month == "November"))
				day = "29th"
				else
				ans9 = AskYesOrNo("Were you born on the 31st?")
					if (ans9 == true)
					day = "31st"
					else
					day = "29th"
					end
				end
			end
		else
			if (ans7 == true)
			ans8 = AskYesOrNo("Were you born on or before the 18th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 18th?")
					if (ans9 == true)
					day = "18th"
					else
					day = "16th"
					end
				else
				ans9 = AskYesOrNo("Were you born on the 22nd?")
					if (ans9 == true)
					day = "22nd"
					else
					day = "20th"
					end
				end
			else
			ans8 = AskYesOrNo("Were you born on or before the 26th?")
				if (ans8 == true)
				ans9 = AskYesOrNo("Were you born on the 26th?")
					if (ans9 == true)
					day = "26th"
					else
					day = "24th"
					end
				elsif (ans8 == false and month == "February")
				day = "28th"
				else
				ans9 = AskYesOrNo("Were you born on the 30th?")
					if (ans9 == true)
					day = "30th"
					else
					day = "28th"
					end
				end
			end
		end
	end

final_answer = "\n" + "Okay, thanks for indulging me #{reply_name}. You were born on #{month} the #{day}" + "\n"*2

puts final_answer
end

FindBirthday()
