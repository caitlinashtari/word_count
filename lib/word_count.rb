class String
  define_method(:single_word) do |argument_input|
    lowercase_string = self.downcase
    string_to_array = lowercase_string.split(" ")
    string_to_array.count(argument_input)
  end

  define_method(:word_count) do |argument_input|
    string_input = self.downcase
    string_input.gsub!(/[^a-zA-Z. ]/,'')
    count_array = string_input.scan(argument_input.downcase)
    count_array.length
  end
end
