class TweetsController < ApplicationController


  def index 
      @tweets=Tweet.where(user_id: current_user.id)
  end
  

  def new
      @tweet=Tweet.new
  end

  def match
    @tweets=Tweet.where(start: '2023-11-12 05:30:00 UTC')
  end

  def create
      tweet=Tweet.new(tweet_params)
      tweet.user_id = current_user.id
      if tweet.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:start,:finish,:study)
  end

end