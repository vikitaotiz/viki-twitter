class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        @user = User.find(id)
        @tweets = Tweet.all
        @tweet = Tweet.new
        @follows = User.all - @user.following - [@user]
        @followers = @user.followers
    end

    private

    def id
        params[:id]
    end
end
