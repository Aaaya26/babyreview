class Tag < ApplicationRecord
  has_many :review_tag_relations
  has_many :reviews, through: :review_tag_relations
  validates :tag_name, uniqueness: true
end
