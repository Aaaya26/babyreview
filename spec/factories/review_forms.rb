FactoryBot.define do
  factory :review_form do
    item_name     {Faker::Commerce.product_name}
    category_id   {Faker::Number.between(from: 2, to: 12)}
    evaluation_id {Faker::Number.between(from: 2, to: 11)}
    text          {Faker::Lorem.sentence}
    image         {ActiveStorage::Blob.create_and_upload!(io: File.open("public/images/test_image.png"),filename: "text_image/png")}
    
    association :user
  end
end