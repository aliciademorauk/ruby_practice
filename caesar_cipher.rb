require_relative 'shared/get_input.rb'

def encrypt(sentence, shift)
  alphabet = ('a'..'z').to_a
  last_letter = alphabet.length
  sentence.each_char.with_index do |char, index|
    next unless alphabet.include?(char.downcase)
    new_index = (alphabet.index(char.downcase) + shift) % last_letter
    binding.pry
    sentence[index] = char == char.upcase ? alphabet[new_index].upcase : alphabet[new_index]
  end
end

mssg = get_input('Give me a message to encrypt (only letters in the alphabet will be encrypted):')
factor = get_input('Give me the shift factor:').to_i
puts encrypt(mssg, factor)