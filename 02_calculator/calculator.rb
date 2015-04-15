def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	array.reduce(0, :+)
end

def multiple(x, y)
	x * y
end

def multiplies_several_numbers(array)
	array.reduce(1, :*)
end

def computers_factorial(n)
  if n == 0
  1
  else
  (1..n).reduce(:*)
  end
end 