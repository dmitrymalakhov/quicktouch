require 'spec_helper'

describe "workers/new" do
  before(:each) do
    assign(:worker, stub_model(Worker,
      :name => "MyString",
      :job => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :skype => "MyString",
      :region => "MyString"
    ).as_new_record)
  end

  it "renders new worker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workers_path, :method => "post" do
      assert_select "input#worker_name", :name => "worker[name]"
      assert_select "input#worker_job", :name => "worker[job]"
      assert_select "input#worker_phone", :name => "worker[phone]"
      assert_select "input#worker_email", :name => "worker[email]"
      assert_select "input#worker_skype", :name => "worker[skype]"
      assert_select "input#worker_region", :name => "worker[region]"
    end
  end
end
