def make_file_text_uppercase(filename)
  data = ''
  f = File.open(filename, "r+")
  f.each_line do |line|
    data += line
  end
  newLines = data.upcase
  f.rewind
  f.write(newLines)
end

make_file_text_uppercase('C:\oss\ruby_new\OddJob_Test1.txt')
