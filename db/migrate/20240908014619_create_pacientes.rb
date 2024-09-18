class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :nome_responsavel
      t.string :email_responsavel
      t.string :endereco
      t.date :data_cadastro
      t.text :historico_medico

      t.timestamps
    end
  end
end
