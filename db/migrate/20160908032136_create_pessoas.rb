class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :PES_NOME
      t.datetime :PES_DATA_CADASTRO
      t.datetime :PES_DATA_NASCIMENTO
      t.integer :PES_ESTADO
      t.integer :PES_CIDADE
      t.string :PES_CPF
      t.string :PES_GENERO
      t.string :PES_TIPO_SANGUINEO
      t.string :PES_EMAIL_PRINCIPAL
      t.string :PES_EMAIL_ALTERNATIVO
      t.string :PES_PESO
      t.string :PES_ALTURA
      t.string :PES_IP
      t.string :PES_STATUS

      t.timestamps
    end
  end
end
