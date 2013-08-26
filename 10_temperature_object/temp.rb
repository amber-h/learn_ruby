def test(h)
		/h.each {|k,v| send(:k,v)}/
		/@hash = { :key => value}/
		puts h.key(50)
		
end

h = {:f => 50}
test(h)