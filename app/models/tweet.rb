class Tweet < ApplicationRecord
    validates :content, presence: true, length: { maximum: 100, too_long: '100 characters in post is the maximum allowed.' }

    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    has_one_attached :post_image
end
