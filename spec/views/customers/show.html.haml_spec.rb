require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :adress => "Adress",
      :business_phone => "Business Phone",
      :personal_phone => "Personal Phone",
      :coordinates => "Coordinates"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Adress/)
    rendered.should match(/Business Phone/)
    rendered.should match(/Personal Phone/)
    rendered.should match(/Coordinates/)
  end
end
