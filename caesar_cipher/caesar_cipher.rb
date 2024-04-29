module CaesarCipher
  ALPHABET = ('a'..'z').to_a
  LAST_INDEX = ALPHABET.length

  def self.encrypt(sentence, shift_factor)
    sentence.each_char.with_index do |char, index|
      next unless ALPHABET.include?(char.downcase)
      new_index = (ALPHABET.index(char.downcase) + shift_factor) % LAST_INDEX
      sentence[index] = is_uppercase(char) ? ALPHABET[new_index].upcase : ALPHABET[new_index]
    end
  end

  def self.is_uppercase(char)
    char == char.upcase
  end
end