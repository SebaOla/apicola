require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :adress => "Adress",
        :business_phone => "Business Phone",
        :personal_phone => "Personal Phone",
        :coordinates => "Coordinates"
      ),
      stub_model(Customer,
        :name => "Name",
        :adress => "Adress",
        :business_phone => "Business Phone",
        :personal_phone => "Personal Phone",
        :coordinates => "Coordinates"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    assert_select "tr>td", :text => "Business Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Personal Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Coordinates".to_s, :count => 2
  end
end
