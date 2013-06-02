require 'spec_helper'

describe "bills/new" do
  before(:each) do
    assign(:bill, stub_model(Bill,
      :customer_id => "MyString",
      :total_amount => "MyString",
      :date => "MyString"
    ).as_new_record)
  end

  it "renders new bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bills_path, "post" do
      assert_select "input#bill_customer_id[name=?]", "bill[customer_id]"
      assert_select "input#bill_total_amount[name=?]", "bill[total_amount]"
      assert_select "input#bill_date[name=?]", "bill[date]"
    end
  end
end
