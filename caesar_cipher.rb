module CaesarCipher
  def self.encrypt(sentence, shift_factor)
    alphabet = ('a'..'z').to_a
    last_index = alphabet.length - 1
    
    already_substituted = []
    sentence.each_char do |i|
      if alphabet.include?(i.downcase) && !already_substituted.include?(i)
        already_substituted << i
        new_index = alphabet.index(i.downcase) + shift_factor
        if new_index > last_index
          new_index = new_index % last_index
        end
        sentence = is_uppercase(i) ? sentence.gsub(i, alphabet[new_index].upcase) : sentence.gsub(i, alphabet[new_index])
      end
    end
    sentence
  end

  def self.is_uppercase(char)
    char == char.upcase
  end
end