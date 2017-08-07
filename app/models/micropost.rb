class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  
  has_many   :retweets, class_name: 'Micropost', foreign_key: 'retweet_id'
  belongs_to :original, class_name: 'Micropost', foreign_key: 'retweet_id', optional: true
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end