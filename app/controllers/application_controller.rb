class ApplicationController < ActionController::Base
    helper_method :current_usuario
  
    def current_usuario
      @current_usuario ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
    end
  end
  