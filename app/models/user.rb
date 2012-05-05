class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :hobbies, :through => :user_hobby

  
  validates :email , :presence => true
  validates :name , :presence => true
  validates :password , :presence => true

end
