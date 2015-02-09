module Weather

# def stormy!
# 	random_weather = ["sunny", "stormy"]
# 	if random_weather.sample == "stormy"
# 		@stormy = true
# 	else
# 		@stormy = false
# 	end
# end


def stormy!
	if rand(1..10) >= 8
		@stormy = true
	else
		@stormy = false
	end

end

end