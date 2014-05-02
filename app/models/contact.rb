class Contact < ActiveRecord::Base

  belongs_to :user
  has_many :goals

  validates_presence_of :user_id,:name,:title,:email

end

