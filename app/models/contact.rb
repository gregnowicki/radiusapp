class Contact < ActiveRecord::Base

  belongs_to :user
  has_many :goals, dependent: :destroy
  accepts_nested_attributes_for :goals, allow_destroy: true, reject_if: lambda {|attributes| attributes['title'].blank? && attributes['notes'].blank?}
  validates_presence_of :user_id,:name,:title,:email
end

