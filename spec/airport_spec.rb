require 'airport'
require 'plane'
require 'weather'
	
describe Airport do


	let(:airport){Airport.new(capacity: 10)}
	let(:plane){Plane.new}
	let(:weather){double :weather}


	context 'taking off and landing' do 
	
		it 'can allow a plane to land' do 
			allow(airport).to receive(:sunny?) {'sunny'}
			expect{airport.park(plane)}.to change{airport.plane_count}.by 1
		end


		it 'can allow a plane to take off' do
			airport.park(plane)
			expect{airport.release(plane)}.to change{airport.plane_count}. by -1
		end

	end


	# context 'traffic control' do 

	# 	it 'should know when it is full' do
	# 		expect(airport).not_to be_full
	# 		20.times {airport.park(plane)}
	# 		expect(airport).to be_full
	# 	end


	# 	it 'can refuse a plane to land if it is full' do
	# 		20.times {airport.park(plane)}
	# 		expect{airport.park(plane)}.to raise_error(RuntimeError, 'The airport is full - Plane not authorized to land')
	# 	end

	# end

	
	context 'weather conditions' do 

		it 'can refuse a plane to take off when there is a storm' do
			allow(airport).to receive(:stormy!) {'stormy'}
			expect{airport.release(plane)}. to raise_error(RuntimeError, 'Stormy weather - Plane cannot take off')
		end


		it 'can refuse a plane to land when there is a storm' do
			allow(airport).to receive(:stormy!) {'stormy'}
			expect{airport.park(plane)}. to raise_error(RuntimeError, 'Stormy weather - Plane cannot land')
		end

	end


end