require 'airport'
require 'plane'
	
describe Airport do


	let(:airport){Airport.new(capacity:10)}
	let(:plane){Plane.new}


	context 'taking off and landing' do 
	
		it 'can allow a plane to land' do 
			expect{airport.park(plane)}.to change{airport.plane_count}.by 1
		end


		it 'can allow a plane to take off' do
			airport.park(plane)
			expect{airport.release(plane)}.to change{airport.plane_count}. by -1
		end





	context 'traffic control' do 


		it 'should know when it is full' do
			expect(airport).not_to be_full
			20.times {airport.park(plane)}
			expect(airport).to be_full
		end


		# it 'can refuse a plane to land if it is full' do
		# 	20.times {airport.park(plane)}
		# 	expect{airport.park(plane)}.to raise_error(RuntimeError, 'The airport is full - Plane not authorized to land')
		# end


		# it 'should know how many slots are still available' do
		# end




	# context 'weather conditions' do 

	# 	it 'can refuse a plane to take off when there is a storm' do
	# 	end


	# 	it 'can refuse a plane to land when there is a storm' do
	# 	end









	# end

	end

	end

end