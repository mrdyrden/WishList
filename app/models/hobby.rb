class Hobby < ActiveRecord::Base
  attr_accessible :name

  has_many :users, :through => :user_hobby

end
