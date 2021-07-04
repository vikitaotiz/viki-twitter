class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @tweet = Tweet.new
  end

  def show
    @user = User.find(id)
    @tweets = @user.tweets
    @tweet = Tweet.new
    @follows = User.all - @user.following - [@user]
    @followers = @user.followers
  end

  private

  def id
    params[:id]
  end
end
