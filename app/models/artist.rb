class Artist < ActiveRecord::Base
	has_and_belongs_to_many :users
	validates :echo_id, uniqueness: true 
end
