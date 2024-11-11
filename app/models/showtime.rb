class Showtime < ApplicationRecord
  belongs_to :movie
  has_many :seats, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :start_time, :end_time, presence: true
end
