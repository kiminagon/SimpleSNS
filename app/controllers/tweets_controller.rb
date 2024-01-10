# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
  
    def index
      @tweets = Tweet.all.order(created_at: :desc)
    end
  
    def create
      @tweet = current_user.tweets.build(tweet_params)
      extract_hashtags(tweet_params[:content]) # ハッシュタグを抽出して保存
  
      if @tweet.save
        redirect_to tweets_path, notice: 'ツイートが投稿されました。'
      else
        redirect_to tweets_path, alert: 'ツイートの投稿に失敗しました。'
      end
    end
  
    private
  
    def extract_hashtags(text)
      hashtags = text.scan(/#\w+/)
      @tweet.hashtags = hashtags
    end
  
    def tweet_params
      params.require(:tweet).permit(:content)
    end
  end  
  
  
