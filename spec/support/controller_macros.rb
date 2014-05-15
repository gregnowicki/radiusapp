module ControllerMacros
  # def login_admin
  #   before(:each) do
  #     @request.env["devise.mapping"] = Devise.mappings[:admin]
  #     sign_in FactoryGirl.create(:admin) # Using factory girl as an example
  #   end
  # end

  def login_user(user = FactoryGirl.create(:user))
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      # user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
      controller.stub(:current_user => user)
    end
    user
  end

  # def mock_sign_in(user = double('user'))
  #     if user.nil?
  #       @request.env['warden'].stub(:authenticate!).
  #         and_throw(:warden, {:scope => :user})
  #       controller.stub :current_user => nil
  #     else
  #       @request.env['warden'].stub :authenticate! => user
  #       controller.stub :current_user => user
  #     end
  #   end
end