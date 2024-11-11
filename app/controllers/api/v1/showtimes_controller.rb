class Api::V1::ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.where("start_time >= ?", params[:date])
    render json: @showtimes, include: :seats
  end
end
