class Book
	def initialize
		@title=""
	end

	def title=(string)
		arr = ['a', 'an', 'the','over','and', 'in', 'of']
     	string.capitalize!
		@title= string.gsub(/\w+/) {|match| arr.include?(match) ? match : match.capitalize}
		return @title 
    end

    def title
    	return @title
    end

end
