class Micropost < ActiveRecord::Base
	belongs_to :user
  	validates :content, length: { maximum: 140 }, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
