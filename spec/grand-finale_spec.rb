require 'airport'
require 'plane'
require 'weather'
require 'grand-finale'

describe Finale do

	let(:airport) {Airport.new}
	let(:plane) {Plane.new}
	
	it 'allow all planes to take off and all planes to land' do
		airport.stormy!
		6.times {airport.park(plane)}
		plane.landed!
		expect(plane).not_to be_flying
		plane.takeoff!
		6.times{airport.release(plane)}
		expect(plane).to be_flying
	end



end