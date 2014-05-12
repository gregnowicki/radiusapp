require 'spec_helper'

describe Contact do
  
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:email) }

  it {should belong_to :user}
  it {should have_many(:goals).dependent(:destroy)}

  it "has a valid factory" do
    c = FactoryGirl.build(:contact)
    c.save!
  end
end
