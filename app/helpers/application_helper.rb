# app/helpers/application_helper.rb

module ApplicationHelper
    def format_hashtags(hashtags)
      hashtags.map { |tag| link_to(tag, class: 'hashtag') }.join(', ').html_safe
    end
  end
  
