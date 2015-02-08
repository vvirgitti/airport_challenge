require 'plane'
require 'weather'

describe Plane do


	let(:plane){Plane.new}
	let(:weather){double :weather}
	let(:airport){double :airport}


	context 'taking off and landing' do 

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


	context 'weather condition' do

		it 'cannot land at the airport' do
			allow(plane).to receive(:stormy!) {'stormy'}
			expect{plane.landed!}.to raise_error(RuntimeError, 'Stormy weather - Plane cannot land')
		end

		# it 'cannot take off from the airport' do
		# 	allow(plane). to receive(:stormy!) {'stormy}'}
		# 	expect{plane.takeoff!}.to raise_error(RuntimeError 'Stormy weather - Plane cannot takeoff')
		# end
	
	end


	context 'traffic control' do

		it 'cannot land at the aiport as the aiport is full' do
			20.times {plane.landed!}
			expect(airport).to be_full
			expect{plane.landed}.to raise_error(RuntimeError, 'Airport full, plane cannot land')
		end

	end



	
end