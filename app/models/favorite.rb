class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end


#  users
# | id | email |
# User.has_many :microposts
# ユーザーを一人分登録する行為です。

# microposts
# | id | content | user_id | 誰の記事かがわかるようにするもの
# Micropost.belongs_to :user
# 記事を一つ追加する行為です。

# favorites
# | id | user_id | micropost_id | 誰が誰の記事をお気に入りにしたかがわかるようになっている
# お気に入りにするという行為はfavoritesに1行追加する行為です。

# relationships
# | id | user_id | follow_id | 誰が誰をフォローしているかがわかるようなっている。
# フォローするというのはrelationshipsに1行追加する行為です。



# favoritesテーブルに１行追加するために必要なデータ
# user_id << current_userなのですでにコントローラで取得可能。
# micropost_id << ビューから送ってもらう必要がある。