require 'spec_helper'

describe "Contacts" do
  context "when logged in" do
    
    before do
      login_request_user FactoryGirl.create(:user)
    end

    describe "GET /contacts" do

      it "Displays index page" do
        # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        get contacts_path
        response.status.should be(200)
        expect(response).to render_template(:index)
        expect(response.body).to include("Listing contacts")
      end


    end

  end
end
