require 'faker'

23.times do |index|
    #Pinterest.create!([{title: Faker::Lorem.sentence(2, false, 0).chop, status: 0, description: Faker::Lorem.sentence(20, false, 0).chop}])
    Pinterest.create!([{title: Faker::Lorem.sentence(2, false, 0).chop, status: 0, description: Faker::Lorem.sentence(20, false, 0).chop, image: Faker::Avatar.image}])
end