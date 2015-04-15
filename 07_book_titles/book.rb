class Book

	attr_reader :title

	def title=(string)
		little_word = %w(a an to in the of and)
		capitalize_word = string.split(" ").map do |word|
			if little_word.include?(word)
				word
			else
				word.capitalize
			end
		end
		capitalize_word.first.capitalize!
		@title = capitalize_word.join(" ")
	end
end


