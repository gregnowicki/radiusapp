# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  notes      :text
#  due_date   :date
#  contact_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Goal < ActiveRecord::Base

  belongs_to :contact
  validates_presence_of :title, :due_date
end
