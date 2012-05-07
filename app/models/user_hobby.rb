class UserHobby < ActiveRecord::Base
  attr_accessible :hobby_id, :user_id

  belongs_to :user
  belongs_to :hobby
  
end
