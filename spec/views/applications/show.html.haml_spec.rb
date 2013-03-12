require 'spec_helper'

describe "applications/show" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :title => "Title",
      :description => "MyText",
      :android_link => "Android Link",
      :ios_link => "Ios Link",
      :locale => "Locale"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Android Link/)
    rendered.should match(/Ios Link/)
    rendered.should match(/Locale/)
  end
end
