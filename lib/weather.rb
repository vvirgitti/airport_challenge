module Weather

def stormy!
	if rand(1..10) >= 8
		@stormy = true
	else
		@stormy = false
	end

end

end