require 'ffaker'

FactoryGirl.define do
  factory :user do |f|
    f.email { FFaker::Internet.email }
    f.password 'foobarbaz'
  end
end
