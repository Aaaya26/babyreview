class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string     :item_name,    null: false
      t.integer    :category_id,  null: false
      t.integer    :evaluation_id,null: false
      t.text       :text,         null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
