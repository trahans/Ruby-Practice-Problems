def make_file_text_lowercase(filename)
  data = ''
  f = File.open(filename, "r+")
  f.each_line do |line|
    data += line
  end
  newLines = data.downcase
  f.rewind
  f.write(newLines)
end

make_file_text_lowercase('C:\oss\ruby_new\OddJob_Test1.txt')
