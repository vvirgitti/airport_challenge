require 'plane'
require 'weather'

describe Plane do


	let(:plane){Plane.new}
	let(:airport){double :airport}


		it 'has a flying status when created' do
			expect(plane).to be_flying
		end


		it 'has a landed status when it is parked in the aiport' do
			plane.landed!
			expect(plane).not_to be_flying
		end


		it 'has a flying status when in the air' do
			plane.takeoff!
			expect(plane).to be_flying
		end




end