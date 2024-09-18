class UsuariosController < ApplicationController
  layout false
  
  def new
    @usuario = Usuario.new    
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save      
      redirect_to usuarios_path, notice: 'Usuário cadastrado com sucesso.'
    else
      flash.now[:alert] = "Houve um erro ao cadastrar o usuário."
      render :new
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
