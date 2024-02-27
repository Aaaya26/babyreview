require 'rails_helper'

RSpec.describe ReviewForm, type: :model do
  before do
    user = FactoryBot.create(:user)
    @review_form = FactoryBot.build(:review_form, user_id: user.id)
  end
  
  describe 'レビュー投稿機能' do
    context 'レビューが投稿できるとき' do
      it '全ての項目に正しく入力したら登録できる' do
        expect(@review_form).to be_valid
      end
    end

    context 'レビューが投稿できないとき' do
      it 'item_nameが空では投稿できない' do
        @review_form.item_name = ''
        @review_form.valid?
        expect(@review_form.errors.full_messages).to include("Item name can't be blank")
      end
      it 'evaluation_idが未選択では投稿できない' do
        @review_form.evaluation_id = '1'
        @review_form.valid?
        expect(@review_form.errors.full_messages).to include("Evaluation must be other than 1")
      end
      it 'category_idが未選択では投稿できない' do
        @review_form.category_id = '1'
        @review_form.valid?
        expect(@review_form.errors.full_messages).to include("Category must be other than 1")
      end
      it 'textが空では投稿できない' do
        @review_form.text = ''
        @review_form.valid?
        expect(@review_form.errors.full_messages).to include("Text can't be blank")
      end
      it 'imageが空では保存できない' do
        @review_form.image = nil
        @review_form.valid?
        expect(@review_form.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end

