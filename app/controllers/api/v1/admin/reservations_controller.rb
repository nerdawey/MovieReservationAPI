module Api
  module V1
    module Admin
      class ReservationsController < ApplicationController
        before_action :authorize_admin!

        # GET /api/v1/admin/reservations
        def index
          @reservations = Reservation.includes(:showtime, :seat).all
          total_capacity = Seat.count
          reserved_seats = Reservation.where(status: :reserved).count
          total_revenue = calculate_revenue

          render json: {
            reservations: @reservations.as_json(include: { showtime: { include: :movie }, seat: {} }),
            total_capacity: total_capacity,
            reserved_seats: reserved_seats,
            total_revenue: total_revenue
          }, status: :ok
        end

        private

        def calculate_revenue
          Reservation.where(status: :reserved).count * 10
        end
      end
    end
  end
end
