require_relative 'shared/get_input.rb'

def is_isogram?(word)
  return nil if word.length < 2
  word_array = word.downcase.chars
  word_set = Set.new(word_array)
  return word_array.length == word_set.length
end

word = get_input('Give me a word:')
puts is_isogram?(word)