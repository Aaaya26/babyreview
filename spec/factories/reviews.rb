FactoryBot.define do
  factory :review do
    item_name     {Faker::Commerce.product_name}
    category_id   {Faker::Number.between(from: 2, to: 12)}
    evaluation_id {Faker::Number.between(from: 2, to: 11)}
    text          {Faker::Lorem.sentence}

    association :user

    after(:build) do |review|
      review.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end