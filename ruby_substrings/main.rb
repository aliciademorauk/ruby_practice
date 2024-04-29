require_relative 'substrings'

def get_input(prompt)
  puts prompt
  input = gets.chomp.strip
  while input.empty?
    puts "You haven't provided any input. Try again:"
    input = gets.chomp.strip
  end
  input
end

message = get_input("Give me a message:")

dictionary = []
input = get_input("Give me the substrings you want to find within the previous message, one by one:")
while !input.empty?
  dictionary << input
  puts "Your current list is '#{dictionary.join(", ")}'.\nPress 'Enter' to proceed to find substrings or give me another substring:"
  input = gets.chomp.strip 
end

puts Substrings.substrings(message, dictionary)