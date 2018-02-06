class User < ApplicationRecord
	#avoid case-sensitive conflict with database adapters
	before_save { self.email = email.downcase }

	validates :name, presence: true, length: { maximum: 50 }

	#validating email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum:255 },
				format: { with: VALID_EMAIL_REGEX }, 
				uniqueness: { case_sensitive: false }

	#password authentication using bcrypt
	has_secure_password
	validates :password, length: { minimum: 6 }, presence: true
end
