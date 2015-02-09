require 'airport'
require 'plane'
require 'weather'
require 'grand-finale'

describe Finale do

	let(:airport) {Airport.new}
	let(:plane) {Plane.new}
	
	it 'allow all planes to take off and all planes to land' do
		allow(airport).to receive(:stormy!).and_return(false)
		plane.landed!
		6.times {airport.park(plane)}
		expect(airport.plane_count).to eq 6
		plane.takeoff!
		6.times{airport.release(plane)}
		expect(airport.plane_count).to eq 0
	end



end