require "rails_helper"

describe Beer do
	describe "validations" do
		it { should validate_presence_of :name }
		it { should validate_presence_of :brewery }

		it 'should validate unique name-brewery combination'
	end

	describe '#average_rating' do
		subject { FactoryGirl.create :beer }

		context 'when it has no ratings' do
			it 'returns nil' do
				expect(subject.average_rating).to eq nil
			end
		end

		context 'when it has ratings' do
			before do
				FactoryGirl.create :rating, beer: subject, value: 5
				FactoryGirl.create :rating, beer: subject, value: 3
			end

			it 'returns the average' do
				expect(subject.average_rating).to eq 4
			end
		end
	end
end