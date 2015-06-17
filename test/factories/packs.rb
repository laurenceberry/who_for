require 'ffaker'
FactoryGirl.define do
  factory :pack do |f|
    f.name { FFaker::Name.name }

    factory :pack_with_profiles do
      transient do
        profiles_count 5
      end

      after(:create) do |pack, eval|
        create_list(:profile, eval.profiles_count, pack: pack)
      end
    end
  end
end
