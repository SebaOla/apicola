require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :description => "MyString",
      :weigth => "MyString",
      :volume => "MyString",
      :unit_price => "MyString",
      :stock => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_description[name=?]", "product[description]"
      assert_select "input#product_weigth[name=?]", "product[weigth]"
      assert_select "input#product_volume[name=?]", "product[volume]"
      assert_select "input#product_unit_price[name=?]", "product[unit_price]"
      assert_select "input#product_stock[name=?]", "product[stock]"
    end
  end
end
