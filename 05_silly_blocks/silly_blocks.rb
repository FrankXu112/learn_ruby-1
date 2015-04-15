def reverser
	yield.split(" ").reverse.join(" ").reverse
end


def adder(n)
	yield + n
end

def repeater(n)
	n.times do yield
	end
end