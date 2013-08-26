def reverser
	yield.reverse.split(" ").reverse.join(" ")
end

def adder(*args)
	if args.length == 0
		return yield + 1 
	else
		return (yield + args[0])
	end
	
end

def repeater(*args)
	i =1 
	sum = 0

	if args.length == 0
	return yield
	else
		while i < args[0] do
			sum += yield 
			i+=1
		end
		
	end
	return sum
end