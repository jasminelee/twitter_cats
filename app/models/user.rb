class User < ActiveRecord::Base
	has_many :tweets
	validates :username, format: {:with => /\A[a-z0-9\-_]+\z/i}, presence: true
	validates :email, format: {:with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}, presence: true
end
