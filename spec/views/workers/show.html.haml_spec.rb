require 'spec_helper'

describe "workers/show" do
  before(:each) do
    @worker = assign(:worker, stub_model(Worker,
      :name => "Name",
      :job => "Job",
      :phone => "Phone",
      :email => "Email",
      :skype => "Skype",
      :region => "Region"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Job/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Skype/)
    rendered.should match(/Region/)
  end
end
