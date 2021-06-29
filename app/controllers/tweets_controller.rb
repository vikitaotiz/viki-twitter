class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    timeline_tweets
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
    @timeline_tweets = Tweet.all
  end

  def tweet_params
    params.require(:tweet).permit(:content, :tweet_image)
  end
end
