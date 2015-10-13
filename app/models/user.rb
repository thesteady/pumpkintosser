class User < ActiveRecord::Base
	has_secure_password

	validates_presence_of :email
	validates_uniqueness_of :email

	has_many :ratings, dependent: :destroy
	has_many :beers, through: :ratings
end