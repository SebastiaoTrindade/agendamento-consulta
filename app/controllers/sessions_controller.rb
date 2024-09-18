class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :destroy

  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])      
      session[:usuario_id] = usuario.id
      flash[:notice] = "Login efetuado com sucesso!"
      redirect_to dashboard_path
    else
      flash.now[:alert] = 'Email ou senha inválidos'
      render 'new'
    end
  end

  def destroy
    session[:usuario_id] = nil
    flash[:notice] = "Logout efetuado com sucesso!"
    redirect_to login_path
  end
end
