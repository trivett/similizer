class User < ActiveRecord::Base
	has_secure_password

	validates :email, :user_name, :password, presence: true
	validates :email, :user_name, uniqueness: true 
	
	has_and_belongs_to_many :artists

end