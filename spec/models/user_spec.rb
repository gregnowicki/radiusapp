require 'spec_helper'

describe User do
  it {should have_many(:contacts).dependent(:destroy)}

  it "has a valid factory" do
    u = FactoryGirl.build(:user)
    u.save!
  end
end
