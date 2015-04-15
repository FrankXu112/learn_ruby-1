class RPNCalculator
	attr_reader :input

	def self.plus
	end
  
  def self.minus
	end

	def self.times
	end

	def self.divide
	end

	def initialize
		@input = []
	end

	def push(n)
		@input.push(n)
	end

	def value
		@input.last
	end

	def plus
		x = @input.pop
		y = @input.pop
		@input.push(x + y)
	end

	def minus
		x = @input.pop
		y = @input.pop
		@input.push(y - x)
	end

	def times
		x = (@input.pop).to_f
		y = (@input.pop).to_f
		@input.push((x * y).to_f)
	end

	def divide
		x = (@input.pop).to_f
		y = (@input.pop).to_f
		@input.push((y / x).to_f)
	end
end