FactoryGirl.define do
	factory :rating do
		association :user
		association :beer
		value { (1..5).to_a.sample }
	end
end