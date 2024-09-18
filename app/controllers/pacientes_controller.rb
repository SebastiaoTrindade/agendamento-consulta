class PacientesController < ApplicationController
  layout false
  
  def index
    @pacientes = Paciente.all
  end

  def new
    @paciente = Paciente.new    
  end

  def create
    @paciente = Paciente.new(paciente_params)
    if @paciente.save      
      redirect_to pacientes_path, notice: 'Paciente cadastrado com sucesso.'
    else
      flash.now[:alert] = "Houve um erro ao cadastrar o usuário."
      render 'new'
    end
    
  end

  private

  def paciente_params
    params.require(:paciente).permit(:nome, :data_nascimento, :nome_responsavel, :email_responsavel, :endereco, :data_cadastro, :historico_medico)
  end
end
