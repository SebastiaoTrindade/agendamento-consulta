class DashboardController < ApplicationController
  before_action :require_login
  layout 'dashboard'

  def index
    @usuario = Usuario.new    
  end

  def usuarios
    
  end

  private

  def require_login
    unless logged_in?
      flash[:alert] = "Você precisa estar logado para acessar esta página."
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:usuario_id]
  end
 
  
end
