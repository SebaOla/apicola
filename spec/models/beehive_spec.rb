require 'spec_helper'

describe Beehive do
	let(:beehive) {Beehive.new}

	describe 'Properties' do

		it "should exist if created" do
			beehive.should be_a_kind_of(Beehive)
		end
		
		it { should belong_to(:apiary) }
		it { should have_many(:tasks) }

  	describe 'qr_code' do
  	  it "should be an string" do
        beehive.codigo = 123 
        beehive.apiary = Apiary.new(adress: "Lujan", coordinates: "xx, yy", name: "Lujan", capacity: 10)
        beehive.qr_code.should be_a_kind_of(RQRCode::QRCode)
      end
    end
		
	end

end
