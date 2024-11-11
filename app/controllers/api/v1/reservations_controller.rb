class Api::V1::ReservationsController < ApplicationController
  def create
    seat = Seat.find(params[:seat_id])
    showtime = Showtime.find(params[:showtime_id])

    if seat.reservations.exists?(showtime_id: showtime.id)
      render json: { error: "Seat already reserved" }, status: :unprocessable_entity
      return
    end

    reservation = Reservation.new(user: current_user, seat: seat, showtime: showtime, status: :reserved)

    if reservation.save
      render json: { message: "Reservation created successfully" }, status: :created
    else
      render json: { errors: reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    if reservation.user == current_user && reservation.showtime.start_time > Time.current
      reservation.cancelled!
      render json: { message: "Reservation cancelled" }, status: :ok
    else
      render json: { error: "Unable to cancel reservation" }, status: :forbidden
    end
  end
end
