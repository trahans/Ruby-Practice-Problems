require 'test\unit'

def check_upcase_of_text(filename)
  data = ''
  f = File.open(filename, "r+")
  f.each_line do |line|
    data += line
  end
return data
end

class UpcaseTest < Test::Unit::TestCase
	def testcheck_upcase_of_text
		assert_equal check_upcase_of_text('C:\oss\ruby_new\OddJob_Test1.txt'), check_upcase_of_text('C:\oss\ruby_new\OddJob_Test1.txt').upcase
	end
end
