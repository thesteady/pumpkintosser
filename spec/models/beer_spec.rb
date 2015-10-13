require "rails_helper"

describe Beer do
	describe "validations" do
		it { should validate_presence_of :name }
		it { should validate_presence_of :brewery }

		it 'should validate unique name-brewery combination'
	end
end