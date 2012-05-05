class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :hobbies, :through => :user_hobbies
  has_many :wishes,  through => :user_wishes

  
  validates :email , :presence => true
  validates :name , :presence => true
  validates :password , :presence => true

end
