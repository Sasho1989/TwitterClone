class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :username, presence: true, length: { minimum: 4, maximum: 25 }
  validates :body, presence: true, length: { maximum: 140 }
end
