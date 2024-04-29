require_relative 'caesar_cipher'

def get_input(prompt)
  puts prompt
  input = gets.chomp.strip
  while input.empty?
    puts "You haven't provided any input. Try again:"
    input =  gets.chomp.strip
  end
  input
end

message = get_input("Give me a message to encrypt (only letters in the alphabet will be encrypted):")
shift = get_input("Give me the shift factor:").to_i

puts CaesarCipher.encrypt(message, shift)