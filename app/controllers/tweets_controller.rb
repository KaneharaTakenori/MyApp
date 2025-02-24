class TweetsController < ApplicationController
  before_action :authenticate_user!,except:[:index,:show,:result,:question1,:question2,:question3,:question4]
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  def index
    @tweets = Tweet.all
  end
  def result
    @tweets = Tweet.all
  end
  def new
    @tweet = Tweet.new
    @track = RSpotify::Track.find(params[:track_id]) if params[:track_id]
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.user_id = current_user.id
    if tweet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  def question1
  end
  def question2
  end
  def question3
  end
  def question4
  end
  private
  def tweet_params
    params.require(:tweet).permit(:body, :youtube_url, :youtube_url2, :youtube_url3, :artist_name, :album_name, :track_name, :album_image, :preview_url, :artist_id, :album_id, :comment, :result)
  end


end
