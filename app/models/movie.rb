class Movie < ApplicationRecord
    has_many :showtimes, dependent: :destroy
    validates :title, :description, :poster_url, :genre, presence: true
  end
  