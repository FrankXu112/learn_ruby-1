def translate(input)
	vowel = %w(a e i o u)
	translate_word = input.split(" ").map do |word|
		array = word.chars
	  until vowel.include?(array.first)
			 array.rotate!
		end
		if array.first == "u" && array.last == "q"
			array.rotate!
		end
		array.join + "ay"
	end
	translate_word.join(" ")
end
