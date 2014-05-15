# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  company    :string(255)
#  email      :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Contact < ActiveRecord::Base

  belongs_to :user
  has_many :goals, dependent: :destroy
  accepts_nested_attributes_for :goals, allow_destroy: true, reject_if: lambda {|attributes| attributes['title'].blank? && attributes['notes'].blank?}
  validates_presence_of :user_id,:name,:title,:email
end

