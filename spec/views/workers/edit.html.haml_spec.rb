require 'spec_helper'

describe "workers/edit" do
  before(:each) do
    @worker = assign(:worker, stub_model(Worker,
      :name => "MyString",
      :job => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :skype => "MyString",
      :region => "MyString"
    ))
  end

  it "renders the edit worker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workers_path(@worker), :method => "post" do
      assert_select "input#worker_name", :name => "worker[name]"
      assert_select "input#worker_job", :name => "worker[job]"
      assert_select "input#worker_phone", :name => "worker[phone]"
      assert_select "input#worker_email", :name => "worker[email]"
      assert_select "input#worker_skype", :name => "worker[skype]"
      assert_select "input#worker_region", :name => "worker[region]"
    end
  end
end
