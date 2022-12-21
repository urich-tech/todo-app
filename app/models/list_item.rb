class ListItem < ApplicationRecord

belongs_to :user
#belongs_to :list

#scope :by_user, lambda { |user|
#		where(:user_id => user.id)
#}


  # validations
  validates_presence_of :short_name

end
