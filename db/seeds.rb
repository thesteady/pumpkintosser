Beer.destroy_all
User.destroy_all
Rating.destroy_all

beers = YAML::load_file(Rails.root.join('db', 'seeds', 'beer.yml'))
all_beers = Beer.create!(beers)

users = YAML::load_file(Rails.root.join('db', 'seeds', 'user.yml'))
all_users = User.create!(users)

ratings_range = (1..5).to_a

all_users.each do |user|
	all_beers.each do |beer|
		Rating.create(beer: beer, user: user, value: ratings_range.sample)
	end
end