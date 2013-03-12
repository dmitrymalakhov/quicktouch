require 'spec_helper'

describe "applications/new" do
  before(:each) do
    assign(:application, stub_model(Application,
      :title => "MyString",
      :description => "MyText",
      :android_link => "MyString",
      :ios_link => "MyString",
      :locale => "MyString"
    ).as_new_record)
  end

  it "renders new application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => applications_path, :method => "post" do
      assert_select "input#application_title", :name => "application[title]"
      assert_select "textarea#application_description", :name => "application[description]"
      assert_select "input#application_android_link", :name => "application[android_link]"
      assert_select "input#application_ios_link", :name => "application[ios_link]"
      assert_select "input#application_locale", :name => "application[locale]"
    end
  end
end
