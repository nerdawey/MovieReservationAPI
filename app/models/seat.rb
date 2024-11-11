class Seat < ApplicationRecord
  belongs_to :showtime
  has_many :reservations, dependent: :destroy
  validates :seat_number, :row_number, presence: true
end
