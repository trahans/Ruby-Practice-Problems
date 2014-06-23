#Greets according to time of day and returns date and time

time = Time.new
puts "\n"
	if time.hour < 12
	puts "Good Morning!"
	elsif time.hour < 16
	puts "Good Afternoon!"
	else puts "Good Evening!"
	end
puts "Current Time : " + time.strftime("%c")
puts "\n"