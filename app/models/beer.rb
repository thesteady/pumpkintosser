class Beer < ActiveRecord::Base
	validates_presence_of :name, :brewery
	validates :name, uniqueness: {scope: :brewery, message: "Only 1 beer with a name per brewery is allowed." }

	has_many :ratings, dependent: :destroy
end