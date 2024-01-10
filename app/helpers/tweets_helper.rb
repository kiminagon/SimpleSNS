# app/helpers/tweets_helper.rb

module TweetsHelper
    def format_tweet_content(content)
      # 任意のフォーマット処理を追加
      content
    end
  
    def format_hashtags(hashtags)
      # hashtagsがnilでないことを確認してからmapメソッドを呼び出す
      if hashtags.present?
        hashtags.map { |tag| link_to(tag, class: 'hashtag') }.join(', ').html_safe
      else
        ''  # hashtagsがnilの場合に空文字列を返すなど、適切な対応を行う
      end
    end
  end
  