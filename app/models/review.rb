class Review < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :review_tag_relations
  has_many :tags, through: :review_tag_relations
  has_one_attached :image


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category   ,numericality: { other_than: 1, message: "can't be blank" }
  belongs_to :evaluation ,numericality: { other_than: 1, message: "can't be blank" }
 
end
