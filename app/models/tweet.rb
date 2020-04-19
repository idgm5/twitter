class Tweet < ApplicationRecord
  belongs_to :user
  acts_as_votable
  validates :body, length: { maximum: 120 }
end
