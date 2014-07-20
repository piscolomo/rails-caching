namespace :db do
	desc "Populating Data example"
	task populate: :environment do 
		100.times do |n|
			name = Faker::Name.name
			email = "prueba#{n}@gmail.com"
			User.create!(name: name, email: email)
		end
		users = User.limit(5).all
		20.times do |n|
			title = Faker::Lorem.sentence
			body = Faker::Lorem.paragraph
			users.each{ |user| user.posts.create!(title: title, body: body)	}
		end
	end
end