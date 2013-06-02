require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :description => "Description",
        :weigth => "Weigth",
        :volume => "Volume",
        :unit_price => "Unit Price",
        :stock => "Stock"
      ),
      stub_model(Product,
        :name => "Name",
        :description => "Description",
        :weigth => "Weigth",
        :volume => "Volume",
        :unit_price => "Unit Price",
        :stock => "Stock"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Weigth".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Price".to_s, :count => 2
    assert_select "tr>td", :text => "Stock".to_s, :count => 2
  end
end
