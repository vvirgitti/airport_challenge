class Airport

DEFAULT_CAPACITY = 10


def initialize(options = {})
	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
end


def planes
	@planes ||= []
end


def plane_count
	planes.count
end


def park(plane)
	planes << plane
end 


def release(plane)
	planes.delete(plane)
end


def capacity
	@capacity = 10
end


def full?
	planes.count == @capacity
end





end