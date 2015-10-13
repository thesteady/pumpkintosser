require "rails_helper"

describe "User" do
	subject { FactoryGirl.build :user }

	describe "validations" do
		it { should validate_presence_of :email }
		it { should validate_uniqueness_of :email }
	end

	describe "Associations" do
		it { should have_many :ratings }
		it { should have_many(:beers).through(:ratings) }
	end
end