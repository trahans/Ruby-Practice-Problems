def PythagoreanTriple(r)
#Equation reference for Dickson's method and desired condition
# r**2 = 2*s*t
# a = r + s
# b = r + t
# c = r + s + t
# a + b + c = 1000
r_squared_divBy2 = (r**2)/2
all_t = []
all_s = []
	for s in 1..(Math.sqrt(r_squared_divBy2).floor)
		if (r_squared_divBy2 % s) == 0
			all_s << s
			all_t << r_squared_divBy2/s
		end
	end
all_a = []
all_b = []
all_c = []
	for i in 0..all_s.length-1
		all_a << all_s[i]+r
		all_b << all_t[i]+r
		all_c << all_s[i]+all_t[i]+r
	end
	for i in 0..all_a.length-1
		if (all_a[i])+(all_b[i])+(all_c[i]) == 1000
			puts all_a[i]
			puts all_b[i]
			puts all_c[i]
			abc = (all_a[i])*(all_b[i])*(all_c[i])
			puts "abc = #{abc}"
		end
	end
end

#	Based on an educated guess for r, the method input
#	can be narrowed down instead of iterated (see below)

range = *(1..200)
range.each { |i| PythagoreanTriple(i) }