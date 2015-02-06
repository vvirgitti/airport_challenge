module Weather


def sunny?
	random_weather = ["sunny", "stormy"]
	if random_weather.sample == "sunny"
		@sunny = true
	else
		@sunny = false
	end
end























end