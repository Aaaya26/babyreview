class Review < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :review_tag_relations
  has_many :tags, through: :review_tag_relations
  has_one_attached :image


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :evaluation
 
end
