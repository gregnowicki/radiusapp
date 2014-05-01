class Goal < ActiveRecord::Base
  belongs_to :contact

  validates_presence_of :title, :due_date, :contact_id

end
