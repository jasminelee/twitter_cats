class Tweet < ActiveRecord::Base
	belongs_to :user
	validates :user, presence: true
	validates :content, length: {maximum: 140}, presence: true
	validates :likes, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
