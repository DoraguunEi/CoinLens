class User < ApplicationRecord
	attr_accessor :remember_token
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

	#returns random token for user digest
	def User.new_token
		SecureRandom.urlsafe_base64
	end

	#remembers user in database in persistent sessions
	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	#return true if given token matches digest
	def authenticated?(remember_token)
		return false if remember_digest.nil?
		BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end

	#forget user
	def forget
		update_attribute(:remember_digest, nil)
	end
end
