# アプリケーション名
Baby Review
# アプリケーション概要
ベビー用品に特化したレビューアプリ。

商品をレビューすることはもちろん、気になる機能の搭載や質問機能もあるので気軽に情報交換ができます。

また、自分自身が利用した商品の記録用としても使用可能です。

# URL
https://babyreview.onrender.com

# テスト用アカウント
Basic認証ID：admin

Basic認証パスワード：1234678

# 利用方法
### レビュー投稿
1.トップページのヘッダーから新規登録を行う。

2.新規レビューボタンから商品の内容（商品名、カテゴリ、評価（10点満点）、レビュー、画像）を入力し投稿

### 質問
1.質問したい商品レビューの下部に質問内容を記入し、質問ボタンを押す。

2.質問に回答する場合も同様の手順で行う。

# アプリケーションを作成した背景
品物の多様化で一つの目的の物にもたくさんの種類があります。

例えばでベビー用品のおむつを例に挙げると、たくさんの種類が存在し、お店の売り場でどれを選ぼうかと悩むことが多々ありました。

それぞれの特徴や使用感など、なるべく合っている物を使ってあげたいというのが親心。

webサイトで検索も可能ですが、情報が多いことと噓の情報も少なからず紛れており、悪循環。

知人同士でベビー用品の情報交換ができるサイトがあれば便利なのにな、というママ達の意見を実現してみました。

孤独な育児中も寂しくないよう質問欄も作成することで、情報交換だけでなく交流もできる機能も付いてます。


# 実装した機能についての画像やGIF
レビューの新規投稿機能（タグ）
[![Image from Gyazo](https://i.gyazo.com/0e56a2c41740ab6888d8b96ad9cb2a00.gif)](https://gyazo.com/0e56a2c41740ab6888d8b96ad9cb2a00)

レビューの新規投稿機能
[![Image from Gyazo](https://i.gyazo.com/538b6edbe730251b0470b9d17d7dca9c.gif)](https://gyazo.com/538b6edbe730251b0470b9d17d7dca9c)

レビューの詳細画面～編集画面への遷移
[![Image from Gyazo](https://i.gyazo.com/d4d662471341fd1a87f1a42f82139e1c.gif)](https://gyazo.com/d4d662471341fd1a87f1a42f82139e1c)

レビューの編集機能
[![Image from Gyazo](https://i.gyazo.com/0d8d451604aa16dd2ee43e690c17aaed.gif)](https://gyazo.com/0d8d451604aa16dd2ee43e690c17aaed)

レビューの削除機能
[![Image from Gyazo](https://i.gyazo.com/75ad13d8544d4125f28b0b46b889ce0e.gif)](https://gyazo.com/75ad13d8544d4125f28b0b46b889ce0e)

質問機能
[![Image from Gyazo](https://i.gyazo.com/1a2d6d8a2c3af59b51af938ab1e559b0.gif)](https://gyazo.com/1a2d6d8a2c3af59b51af938ab1e559b0)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/a8cf8d55d120f01feded606dc00220f4.png)](https://gyazo.com/a8cf8d55d120f01feded606dc00220f4)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/f11d11fa14beb20a74f9592a09271182.png)](https://gyazo.com/f11d11fa14beb20a74f9592a09271182)

# 開発環境
・Ruby

# ローカルでの動作方法
以下のコマンドを順に実装

% git clone https://github.com/Aaaya26/babyreview.git

% cd babyreview

% bundle install

# 工夫したポイント
タグ機能の実装

# 製作時間
60時間