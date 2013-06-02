require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :adress => "MyString",
      :business_phone => "MyString",
      :personal_phone => "MyString",
      :coordinates => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_adress[name=?]", "customer[adress]"
      assert_select "input#customer_business_phone[name=?]", "customer[business_phone]"
      assert_select "input#customer_personal_phone[name=?]", "customer[personal_phone]"
      assert_select "input#customer_coordinates[name=?]", "customer[coordinates]"
    end
  end
end
