def translate(string)
 vowels = ["a","e","i","o","u"]

	if vowels.include?(string[0])
 		string.concat("ay")
	elsif !vowels.include?(string[0]) && vowels.include?(string[1])
		string.gsub(string[0,1],"").concat(string[0,1]).concat("ay")
	elsif !vowels.include?(string[0,2])
		string.gsub(string[0,2],"").concat(string[0,2]).concat("ay")
 	end


end