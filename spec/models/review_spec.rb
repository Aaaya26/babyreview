require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    user = FactoryBot.create(:user)
    @review = FactoryBot.build(:review, user_id: user.id)
  end
    
  describe 'レビュー投稿機能' do
    context 'レビューが投稿できるとき' do
      it '全ての項目に正しく入力したら登録できる' do
        expect(@review).to be_valid
      end
    end
    
  end
end
#bundle exec rspec -f d spec/models/review_spec.rb