require 'ffaker'
FactoryGirl.define do

  factory :profile do |p|
    p.name { FFaker::Name.name  }
    p.description { FFaker::Lorem.sentence(2) }
    p.pack { FFaker::Lorem.word }
  end

end
