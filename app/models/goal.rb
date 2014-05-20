class Goal < ActiveRecord::Base

  belongs_to :contact
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true
  validates_presence_of :title, :due_date
end
