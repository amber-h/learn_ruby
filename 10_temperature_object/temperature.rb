class Temperature

	def initialize(h)
		@hash = h
	end

	def to_fahrenheit
	
		if @hash.has_key? :f
			return @hash[:f]
		else
			return @hash[:c]*9.0/5.0 + 32
		end


	end

	def to_celsius

		if @hash.has_key? :f
			return (@hash[:f] - 32)*5.0/9.0
		else
			return @hash[:c]
		end
	end

	def self.in_celsius(temp)
		return self.new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		return self.new({:f => temp})
	end

end

class Celsius < Temperature

	def initialize(temp) 
		@hash = {:c => temp}
		return Temperature.new(@hash)
	end

end

class Fahrenheit < Temperature

	def initialize(temp)
		@hash = {:f => temp}
		return Temperature.new(@hash)
	end

end
