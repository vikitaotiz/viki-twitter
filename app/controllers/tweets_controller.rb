class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    timeline_tweets
  end

  private

  def timeline_tweets
    @timeline_tweets = Tweet.all
  end
end
