class Post < ApplicationRecord
	belongs_to :user
	validates :title, length: {minimum: 1}
end
