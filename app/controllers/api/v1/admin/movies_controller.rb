module Api
  module V1
    module Admin
      class MoviesController < ApplicationController
        before_action :authorize_admin!

        # POST /api/v1/admin/movies
        def create
          @movie = Movie.new(movie_params)
          if @movie.save
            render json: @movie, status: :created
          else
            render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
          end
        end

        # PATCH/PUT /api/v1/admin/movies/:id
        def update
          @movie = Movie.find(params[:id])
          if @movie.update(movie_params)
            render json: @movie, status: :ok
          else
            render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
          end
        end

        # DELETE /api/v1/admin/movies/:id
        def destroy
          @movie = Movie.find(params[:id])
          @movie.destroy
          render json: { message: "Movie deleted successfully" }, status: :ok
        end

        private

        def movie_params
          params.require(:movie).permit(:title, :description, :poster_url, :genre)
        end
      end
    end
  end
end
