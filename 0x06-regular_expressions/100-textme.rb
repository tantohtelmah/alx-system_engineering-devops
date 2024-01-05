#!/usr/bin/env ruby

# Extract the text after "from"
text = ARGV[0]
match = /(?<=from:)[^\]]+/.match(text)

# Print the extracted text
puts match[0]
