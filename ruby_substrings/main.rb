require_relative 'substrings'

puts "Give me a message:"
message =  gets.chomp
puts "Give me the substrings you want to find within the previous message, one by one:"
dictionary = []

while !(input = gets.chomp).empty?
  dictionary << input
  puts "Your current list is #{dictionary.join(", ")}.\nPress 'Enter' to proceed to find substrings or give me another substring:" 
end

puts Substrings.substrings(message, dictionary)