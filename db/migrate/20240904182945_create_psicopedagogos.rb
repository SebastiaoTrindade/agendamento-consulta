class CreatePsicopedagogos < ActiveRecord::Migration[5.2]
  def change
    create_table :psicopedagogos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :especialidade

      t.timestamps
    end
  end
end
