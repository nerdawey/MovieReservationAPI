class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :showtime
  belongs_to :seat

  enum status: { reserved: 0, cancelled: 1 }

  validates :user, :showtime, :seat, presence: true
  validates_uniqueness_of :seat_id, scope: :showtime_id, message: "This seat is already reserved."
end
