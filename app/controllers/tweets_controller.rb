class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    timeline_tweets
  end

  private
  
  def timeline_tweets
    ids = []
    # returns ids of accepted friends of currently logged in user
    current_user.followers.each { |f| ids << f.follow_id if f.status == true }
    @timeline_tweets = []
    # add id of currently logged in user to ids array
    ids << current_user.id
    # returns tweets of currently logged in user and their friends
    i = 0
    while i < ids.length
      @timeline_tweets += Tweet.where('user_id = ?', ids[i])
      i += 1
    end
    @timeline_tweets.reverse!
  end
end
