FactoryBot.define do
  factory :user do
    name                  {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    password              {'1a'+Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    birthday              {Faker::Date.birthday(min_age: 10, max_age: 54)}
    child_birthday        {Faker::Date.birthday(min_age: 0, max_age: 9)}
  end
end
