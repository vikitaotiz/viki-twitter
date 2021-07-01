class Like < ApplicationRecord
  validates :user_id, presence: true, uniqueness: { scope: :tweet_id }
  belongs_to :user
  belongs_to :tweet
end
