require 'spec_helper'

describe "applications/edit" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :title => "MyString",
      :description => "MyText",
      :android_link => "MyString",
      :ios_link => "MyString",
      :locale => "MyString"
    ))
  end

  it "renders the edit application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => applications_path(@application), :method => "post" do
      assert_select "input#application_title", :name => "application[title]"
      assert_select "textarea#application_description", :name => "application[description]"
      assert_select "input#application_android_link", :name => "application[android_link]"
      assert_select "input#application_ios_link", :name => "application[ios_link]"
      assert_select "input#application_locale", :name => "application[locale]"
    end
  end
end
