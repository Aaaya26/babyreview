class ReviewForm
  include ActiveModel::Model
  attr_accessor :item_name, :evaluation_id, :category_id, :text, :image, :id, :created_at, :updated_at, :user_id

  with_options presence: true do
    validates :item_name
    validates :evaluation_id,numericality: { other_than: 1 }
    validates :category_id, numericality: { other_than: 1 }
    validates :text
    validates :image
  end

  


  def save
    review = Review.create(item_name: item_name, evaluation_id: evaluation_id, category_id: category_id, text: text, image: image, user_id: user_id)
    if tag_name.present?
      tag = Tag.where(tag_name: tag_name).first_or_initialize
      tag.save
      ReviewTagRelation.create(review_id: review.id, tag_id: tag.id)
    end
  end

  def update(params, review)
    review.update(params)
  end
end