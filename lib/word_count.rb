class String
  define_method(:word_count) do |argument_input|
    string_input = self.downcase
    string_input.gsub!(/[^a-zA-Z. ]/,'')
    count_array = string_input.scan(argument_input.downcase)
    count_array.length
  end
end
