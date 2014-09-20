class User < ActiveRecord::Base
  has_many :contests
  has_many :missions, through: :contests 
end
