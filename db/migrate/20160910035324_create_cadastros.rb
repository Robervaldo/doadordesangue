class CreateCadastros < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastros do |t|
      t.string :cad_nome
      t.date :cad_data_nascimento
      t.integer :cad_estado
      t.integer :cad_cidade
      t.string :cad_cpf
      t.string :cad_genero
      t.string :cad_tipo_sanguineo
      t.string :cad_email_principal
      t.string :cad_email_alternativo
      t.string :cad_peso
      t.string :cad_altura
      t.string :cad_ip
      t.string :cad_status

      t.timestamps
    end
  end
end
