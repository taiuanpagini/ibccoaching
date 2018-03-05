require 'faker'

25.times do |index|
    Pinterest.create!([{description: Faker::Lorem.sentence(20, false, 0).chop,status: 0}])
end