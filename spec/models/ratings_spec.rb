require "rails_helper"

describe Rating do
	describe "validations" do
		it { should validate_presence_of :value }
	end

	describe "Associations" do
		it { should belong_to :user }
		it { should belong_to :beer }
	end
end