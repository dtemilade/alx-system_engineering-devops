#!/usr/bin/env ruby
# This accepts 1 argument & pass it to a regular expression matching method
# Regex for expression matching a string that starts with h ends with n

puts ARGV[0].scan(/h.n/).join
