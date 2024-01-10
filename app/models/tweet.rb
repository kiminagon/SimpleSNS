class Tweet < ApplicationRecord
  belongs_to :user
  serialize :hashtags, Array, coder: YAML
end
