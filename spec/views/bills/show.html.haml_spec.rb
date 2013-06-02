require 'spec_helper'

describe "bills/show" do
  before(:each) do
    @bill = assign(:bill, stub_model(Bill,
      :customer_id => "Customer",
      :total_amount => "Total Amount",
      :date => "Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer/)
    rendered.should match(/Total Amount/)
    rendered.should match(/Date/)
  end
end
