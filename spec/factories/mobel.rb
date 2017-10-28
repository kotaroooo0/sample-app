FactoryGirl.define do
  factory :model do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }

    after(:build) do |mobel|
      [:type1, :type2, :type2].each do |type|
        model.other_models << FactoryGirl.build(:other_model, type: type)
      end
    end

  end
end
