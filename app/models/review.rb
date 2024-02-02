class Review < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :evaluation

  with_options presence: true do
    validates :item_name
    validates :evaluation_id,numericality: { other_than: 1 }
    validates :category_id, numericality: { other_than: 1 }
    validates :text
    validates :image
  end
end
