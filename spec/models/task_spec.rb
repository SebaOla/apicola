require 'spec_helper'

describe Task do
	let(:task) {Task.new}

	describe 'Properties' do

		it "should exist if created" do
			task.should be_a_kind_of(Task)
		end
		
		it { should belong_to(:beehive) }
		
	end
end
