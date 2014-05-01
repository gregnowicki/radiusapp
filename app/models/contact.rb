class Contact < ActiveRecord::Base

  belongs_to :user

end

# add validation - user_id is present along with other attributes
