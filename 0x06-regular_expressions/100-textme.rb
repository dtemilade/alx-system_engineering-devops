#!/usr/bin/env ruby
# Regex that run some statistics on the TextMe app

# format for output: [SENDER],[RECEIVER],[FLAGS]
puts ARGV[0].scan(/\[(?:from:|to:|flags:)(.*?)\]/).join(",")
