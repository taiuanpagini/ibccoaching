require 'faker'

35.times do |index|
    Pinterest.create!([{title: Faker::Lorem.sentence(2, false, 0).chop, description: Faker::Lorem.sentence(20, false, 0).chop, image: Faker::Avatar.image}])    
end