require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :adress => "MyString",
      :business_phone => "MyString",
      :personal_phone => "MyString",
      :coordinates => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_adress[name=?]", "customer[adress]"
      assert_select "input#customer_business_phone[name=?]", "customer[business_phone]"
      assert_select "input#customer_personal_phone[name=?]", "customer[personal_phone]"
      assert_select "input#customer_coordinates[name=?]", "customer[coordinates]"
    end
  end
end
