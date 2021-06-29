class Tweet < ApplicationRecord
    validates :content, presence: true, length: { maximum: 100, too_long: '100 characters in tweet is the maximum allowed.' }

    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    has_one_attached :tweet_image
end
