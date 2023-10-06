class API::ApplicationController < ActionController::Base
    before_action :set_default_format
    before_action :authenticate_token!
    before_action :authenticate_user!

    private
  
    # Método que establece el formato de respuesta predeterminado a JSON.
    def set_default_format
      request.format = :json 
    end
  
  end
  