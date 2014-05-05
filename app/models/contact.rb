class Contact < ActiveRecord::Base

  belongs_to :user
  has_many :goals
  accepts_nested_attributes_for :goals, allow_destroy: true
  validates_presence_of :user_id,:name,:title,:email
end

