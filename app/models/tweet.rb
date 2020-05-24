class Tweet < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 25}
end
