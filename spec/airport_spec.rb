require 'airport'
require 'plane'
	
describe Airport do

	let(:capacity) { 10 }
	let(:airport){Airport.new(capacity: capacity)}
	let(:plane){double :plane}

	context 'taking off and landing' do 
	
		it 'can allow a plane to land' do 
			allow(airport).to receive(:stormy!).and_return(false)
			expect{airport.park(plane)}.to change{airport.plane_count}.by 1
		end


		it 'can allow a plane to take off' do
			allow(airport).to receive(:stormy!).and_return(false)
			airport.park(plane)
			expect{airport.release(plane)}.to change{airport.plane_count}. by -1
		end

	end


	context 'traffic control' do 

		it 'should know when it is full' do
			allow(airport).to receive(:stormy!).and_return(false)
			capacity.times {airport.park(plane)}
			expect(airport).to be_full
		end


		it 'can refuse a plane to land if it is full' do
			allow(airport).to receive(:stormy!).and_return(false)
			capacity.times {airport.park(plane)}
			expect{airport.park(plane)}.to raise_error(RuntimeError, 'The airport is full - Plane not authorized to land')
		end

	end

	
	context 'weather conditions' do 

		it 'can refuse a plane to take off when there is a storm' do
			allow(airport).to receive(:stormy!).and_return(true)
			expect{airport.release(plane)}. to raise_error(RuntimeError, 'Stormy weather - Plane cannot take off')
		end


		it 'can refuse a plane to land when there is a storm' do
			allow(airport).to receive(:stormy!).and_return(true)
			expect{airport.park(plane)}. to raise_error(RuntimeError, 'Stormy weather - Plane cannot land')
		end

	end


end