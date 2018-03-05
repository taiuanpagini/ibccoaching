require 'ffaker'

FactoryBot.define do
    factory :pinterest do |f|
        f.description { FFaker::Lorem.word }
        f.status { :inativo }
    end
end