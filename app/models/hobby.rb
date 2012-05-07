class Hobby < ActiveRecord::Base
  attr_accessible :name

  has_many :users_hobbies
  has_many :users , :through => :users_hobbies

end
