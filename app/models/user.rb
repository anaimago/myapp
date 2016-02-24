class User < ActiveRecord::Base
	  has_many :microposts
	  has_many :user_telephones
end