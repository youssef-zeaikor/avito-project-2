class User < ApplicationRecord
    has_secure_password
	
	validates :nom, presence: true, length: {maximum: 50}
	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	# /\A[^@\s]+@[^@\s]+\z/
	validates :email, presence: true, length: {maximum: 255},
	format: { with: VALID_EMAIL}
	validates :password, presence: true, length: { minimum: 6 }
	
	

end
