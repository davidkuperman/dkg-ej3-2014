require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :name => "Name",
        :role => "Role",
        :salary => "Salary"
      ),
      stub_model(Employee,
        :name => "Name",
        :role => "Role",
        :salary => "Salary"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Salary".to_s, :count => 2
  end
end
