require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "MyString",
      :title => "MyString",
      :company => "MyString",
      :email => "MyString",
      :notes => "MyText",
      :user => nil
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_name[name=?]", "contact[name]"
      assert_select "input#contact_title[name=?]", "contact[title]"
      assert_select "input#contact_company[name=?]", "contact[company]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "textarea#contact_notes[name=?]", "contact[notes]"
    end
  end
end
