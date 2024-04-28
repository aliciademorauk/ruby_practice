require_relative 'caesar_cipher'

puts "Give me a message to encrypt (only letters in the alphabet will be encrypted):"
message =  gets.chomp
puts "Give me the shift factor:"
shift = gets.chomp.to_i

puts CaesarCipher.encrypt(message, shift)