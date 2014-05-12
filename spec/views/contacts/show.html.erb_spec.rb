require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "Name",
      :title => "Title",
      :company => "Company",
      :email => "Email",
      :notes => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Title/)
    rendered.should match(/Company/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
