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

	#return hash digest of given string
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
													  BCrypto::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end
end
