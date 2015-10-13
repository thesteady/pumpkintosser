beers = YAML::load_file(Rails.root.join('db', 'seeds', 'beer.yml'))

Beer.create!(beers)
