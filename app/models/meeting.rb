class Meeting < ApplicationRecord
  belongs_to :speaker

  has_many :meeting_topics
  has_many :topics, through: :meeting_topics

  validates :title, presence: true
  validates :agenda, presence: true
  validates :time, presence: true
  validates :location, presence: true
end
