class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    timeline_tweets
    @follows = User.all - current_user.following - [current_user]
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)

    if @tweet.save
      redirect_to tweets_path, notice: 'Tweet was successfully created.'
    else
      render :index, alert: 'Tweet was not created.'
    end
  end

  private

  def timeline_tweets
    ids = current_user.following.pluck(:id) << current_user.id
    @timeline_tweets = Tweet.where(user_id: ids).includes([:user]).order('created_at DESC')
  end

  def tweet_params
    params.require(:tweet).permit(:content, :tweet_image)
  end
end
