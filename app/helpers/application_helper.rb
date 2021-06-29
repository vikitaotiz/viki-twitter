module ApplicationHelper
    def like_or_dislike_btn(tweet)
        like = Like.find_by(tweet: tweet, user: current_user)
        if like
            link_to('Dislike!', tweet_like_path(id: like.id, tweet_id: tweet.id), method: :delete)
        else
            link_to('Like!', tweet_likes_path(tweet_id: tweet.id), method: :tweet)
        end
    end


    def follow_btn(user)
        return unless current_user.id != user.id

        if !current_user.following?(user)
        link_to('Follow', following_index_path(user_id: user.id),
                method: :post,
                class: 'badge rounded-pill bg-primary text-decoration-none')
        else
        form_for(current_user.active_relationships.find_by(followed_id: user.id),
                html: { method: :delete }) do |f|
            f.submit 'Unfollow', class: 'badge rounded-pill bg-warning text-decoration-none'
        end
        end
    end
end
