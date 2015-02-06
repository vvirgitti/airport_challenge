require 'plane'

describe Plane do

	let(:plane){Plane.new}


it "has a flying status when created" do
expect(plane).to be_flying
end


it 'can have a landed status' do
	plane.landed!
	expect(plane).not_to be_flying
end


it 'can has a flying status '







	
end