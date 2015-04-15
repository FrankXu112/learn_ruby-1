def echo(input)
	input
end	

def shout(input)
	input.upcase!
end

def repeat(input, n)
	([input] * n).join ' '
end

def start_of_word(input, n)
	input.slice(0..(n-1))
end

def first_word(input)
	input.split(" ")[0]
end

def titleize(input)
	small_words = %w(on the and over)
	capitalize_words = input.split(" ").map do |word|
		if small_words.include?(word)
			word
		else
			word.capitalize
		end
	end
	capitalize_words.first.capitalize!
	capitalize_words.join(" ")
end

