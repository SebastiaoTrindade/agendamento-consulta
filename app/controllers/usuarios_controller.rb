class UsuariosController < ApplicationController
  layout 'dashboard'
  
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      flash[:notice] = 'Cadastro realizado com sucesso. Por favor, faça o login.'
      redirect_to login_path
    else
      flash.now[:alert] = "Houve um erro ao cadastrar o usuário."
      render 'new'
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end

  def edit
  end

  def update
  end
end
