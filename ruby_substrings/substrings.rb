module Substrings
  def self.substrings(text, strings_array)
    lowercase_text = text.downcase
    strings_array.map do |w|
      count = lowercase_text.scan(/#{w.downcase}/).size
      [w, count] if count > 0
    end.compact.to_h
  end
end
