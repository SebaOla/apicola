require 'spec_helper'

describe "bills/index" do
  before(:each) do
    assign(:bills, [
      stub_model(Bill,
        :customer_id => "Customer",
        :total_amount => "Total Amount",
        :date => "Date"
      ),
      stub_model(Bill,
        :customer_id => "Customer",
        :total_amount => "Total Amount",
        :date => "Date"
      )
    ])
  end

  it "renders a list of bills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Total Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
