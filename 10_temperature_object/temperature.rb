class Temperature

	def self.in_celsius(num)
		Temperature.new({:c => num})
	end

	def self.in_fahrenheit(num)
		Temperature.new({:f => num})
	end


	def initialize(hash)
		hash.each do |key, value|
			if key == :f
				@f = value
			elsif key == :c
				@c = value
			end
		end
	end

	def to_fahrenheit
		if @f
			@f
		elsif @c
	    (@c * 1.8 + 32).round(1)
	  end
	end

	def to_celsius
		if @f
	    ((@f - 32) / 1.8).round(1)
	  elsif @c
	  	@c
	  end
	end		
end

class Celsius < Temperature 
	def initialize(num)
		@c = num
	end
end

class Fahrenheit < Temperature
	def initialize(num)
		@f = num
	end
end