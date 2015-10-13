FactoryGirl.define do
	factory :beer do
		name { "Pumpkin #{Faker::Lorem.word} #{['Ale', 'Lager', 'Stout', 'IPA'].sample}" }
		brewery { "#{Faker::Lorem.words(2).join(" ")} Brewing" }
		abv { (3..9).to_a.sample.to_f }
	end
end