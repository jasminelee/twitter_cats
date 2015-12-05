class User < ActiveRecord::Base
	has_many :tweets
	validates :username, format: {:with => /\A[a-zA-Z0-9]+\z/}, presence: true 
	validates :email, format: {:with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}, presence: true
end
