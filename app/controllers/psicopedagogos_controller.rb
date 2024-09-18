class PsicopedagogosController < ApplicationController
  layout false
  
  def index
    @psicopedagogos = Psicopedagogo.all
  end

  def new
    @psicopedagogo = Psicopedagogo.new    
  end

  def create
    @psicopedagogo = Psicopedagogo.new(psicopedagogo_params)    
    if @psicopedagogo.save      
      redirect_to psicopedagogos_path, notice: 'Psicopedagogo cadastrado com sucesso.'
    else
      flash.now[:alert] = "Houve um erro ao cadastrar o usuário."
      render 'new'
    end
  end

  private

  def psicopedagogo_params
    params.require(:psicopedagogo).permit(:nome, :email, :telefone, :especialidade)
  end
end
