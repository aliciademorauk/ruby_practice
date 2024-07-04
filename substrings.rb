require_relative 'shared/get_input.rb'

def substrings(text, strings_array)
  lowercase_text = text.downcase
  strings_array.map do |w|
    count = lowercase_text.scan(/#{w.downcase}/).size
    [w, count] if count > 0
  end.compact.to_h
end

message = get_input('Give me a message:')
input = get_input('Give me the substrings you want to find within the previous message, one by one:')
dictionary = []
while !input.empty?
  dictionary << input
  puts "Your current list is '#{dictionary.join(", ")}'.\nPress 'Enter' to proceed to find substrings or give me another substring: "
  input = gets.chomp.strip 
end

puts substrings(message, dictionary)
