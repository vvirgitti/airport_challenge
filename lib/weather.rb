module Weather


# def sunny?
# 	random_weather = ["sunny", "stormy"]
# 	if random_weather.sample == "sunny"
# 		@sunny = true
# 	else
# 		@sunny = false
# 	end
# end


def stormy!
	random_weather = ["sunny", "stormy"]
	if random_weather.sample == "stormy"
		@stormy = true
	else
		@stormy = false
	end
end


end