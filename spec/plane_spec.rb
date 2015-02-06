require 'plane'
require 'weather'

describe Plane do


	let(:plane){Plane.new}
	let(:weather){Weather.new}


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



	# context 'the weather is sunny' do

	# 	it 'can take off from the airport' do
	# 		plane.takeoff!
	# 		expect(plane).to be_flying
	# 	end

		
	# 	it 'can land at the airport' do
	# 	end



	# context 'the weather is stormy' do

	# 	it 'cannot land at the airport' do
	# 	end

	# 	it 'cannot take off from the airport' do
	# 	end



	# context 'the airport is not full' do

	# 	it 'can land at the airport' do
	# 	end


	# 	it 'can take off from the airport' do
	# 	end







# it 'can take off from the aiport' do
# 	weather = double (:weather)

# 	allow(weather).to receive(:sunny) {true}
# 	expect(weather).to start_with "sunny"
# 	plane.takeoff!
# 	expect(plane).to be_flying

# end
	
	# end

	# end

	# end

	end
	
end