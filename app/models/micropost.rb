class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  belongs_to :retweet_micropost, class_name:"Micropost", foreign_key:"retweet_micropost_id" 
  has_many :retweeted_microposts, class_name:"Micropost", foreign_key:"retweet_micropost_id" 
end
