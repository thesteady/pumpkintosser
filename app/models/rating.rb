class Rating < ActiveRecord::Base
	validates_presence_of :value

	belongs_to :beer
	belongs_to :user
end