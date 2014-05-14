class Goal < ActiveRecord::Base

  belongs_to :contact
  has_many :tasks
  accepts_nested_attributes_for :tasks
  validates_presence_of :title, :due_date
end
