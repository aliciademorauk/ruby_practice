module Substrings
  def self.substrings(text, strings_array)
    count = {}
    text = text.downcase.split(" ")
    strings_array.each do |w|
      text.each do |word|
        if word.include?(w.downcase)
          count[w] ||= 0 
          count[w] += 1 
        end
      end
    end
    count
  end
  
end
