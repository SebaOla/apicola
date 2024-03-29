require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :description => "Description",
      :weigth => "Weigth",
      :volume => "Volume",
      :unit_price => "Unit Price",
      :stock => "Stock"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Weigth/)
    rendered.should match(/Volume/)
    rendered.should match(/Unit Price/)
    rendered.should match(/Stock/)
  end
end
