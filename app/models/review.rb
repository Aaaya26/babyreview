class Review < ApplicationRecord
  belongs_to :user
  has_oneattached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belpngs_to :evaluation

  with_options presence: true do
    validates :item_name
    validates :text
    validates :image
  end
end
