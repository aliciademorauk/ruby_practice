require_relative 'substrings'

puts "Give me a message:"
message =  gets.chomp
puts "Give me the dictionary you want to use to find substrings in the previous message:"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts Substrings.substrings(message, dictionary)