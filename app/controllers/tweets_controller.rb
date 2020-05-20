class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweets = Tweet.find(params[:id])
  end

  def new
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.save

    redirect_to tweet
  end

  private

  def tweet_params
    params.require(:tweet).permit(:username, :body)
  end
end
