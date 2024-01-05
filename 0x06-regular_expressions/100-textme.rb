#!/usr/bin/env ruby

# Extract the text after "from"
text = ARGV[0]
match = /(?<=from:)[^\]]+/.match(text)
match1 = /(?<=to:)[^\]]+/.match(text)
match2 = /(?<=flags:)[^\]]+/.match(text)

# Print the extracted text
puts match[0], match1[0], match2[0]
