class UserHobby < ActiveRecord::Base
  attr_accessible :hobby_id, :user_id

  belongs_to :users
  belongs_to :hobby
  
end
