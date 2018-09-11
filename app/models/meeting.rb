class Meeting < ApplicationRecord
  belongs_to :speaker

  validates :title, presence: true
  validates :agenda, presence: true
  validates :time, presence: true
  validates :location, presence: true
end
