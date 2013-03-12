require 'spec_helper'

describe "workers/index" do
  before(:each) do
    assign(:workers, [
      stub_model(Worker,
        :name => "Name",
        :job => "Job",
        :phone => "Phone",
        :email => "Email",
        :skype => "Skype",
        :region => "Region"
      ),
      stub_model(Worker,
        :name => "Name",
        :job => "Job",
        :phone => "Phone",
        :email => "Email",
        :skype => "Skype",
        :region => "Region"
      )
    ])
  end

  it "renders a list of workers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Skype".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
  end
end
