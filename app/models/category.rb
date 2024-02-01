class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'おむつ' },
    { id: 3, name: 'ミルク' },
    { id: 4, name: '離乳食' },
    { id: 5, name: 'おやつ' },
    { id: 6, name: 'おもちゃ' },
    { id: 7, name: '大型グッズ' },
    { id: 8, name: 'ボディクリーム' },
    { id: 9, name: '洋服' },
    { id: 10, name: '衛生用品' },
    { id: 11, name: '日用品' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
    has_many :reviews

end