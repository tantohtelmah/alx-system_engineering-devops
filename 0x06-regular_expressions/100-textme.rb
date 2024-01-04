#!/usr/bin/env ruby

puts ARGV[0].scan(/\[from:(\w+|\+\d{11})\]\s\[to:(\w+|\+\d{10})\]\s\[flags:-?\d:-?\d:-?\d:-?\d:-?\d\]/).join
