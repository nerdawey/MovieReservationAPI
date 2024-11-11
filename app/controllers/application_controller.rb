class ApplicationController < ActionController::API
    before_action :authenticate_user!
  
    private
  
    def authenticate_user!
      header = request.headers['Authorization']
      header = header.split(' ').last if header
      decoded = JWT.decode(header, Rails.application.secrets.secret_key_base)[0]
      @current_user = User.find(decoded['user_id'])
    rescue
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  
    def current_user
      @current_user
    end
  
    def authorize_admin!
      render json: { error: 'Forbidden' }, status: :forbidden unless current_user&.admin?
    end
  end
  