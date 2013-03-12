require 'spec_helper'

describe "applications/index" do
  before(:each) do
    assign(:applications, [
      stub_model(Application,
        :title => "Title",
        :description => "MyText",
        :android_link => "Android Link",
        :ios_link => "Ios Link",
        :locale => "Locale"
      ),
      stub_model(Application,
        :title => "Title",
        :description => "MyText",
        :android_link => "Android Link",
        :ios_link => "Ios Link",
        :locale => "Locale"
      )
    ])
  end

  it "renders a list of applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Android Link".to_s, :count => 2
    assert_select "tr>td", :text => "Ios Link".to_s, :count => 2
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
  end
end
