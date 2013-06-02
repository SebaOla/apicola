require 'spec_helper'

describe Apiary do
	let(:apiary) {Apiary.new}

	describe 'Properties' do

		it "should exist if created" do
			apiary.should be_a_kind_of(Apiary)
		end
		
		it { should have_many(:beehives) }
		
	end
end
