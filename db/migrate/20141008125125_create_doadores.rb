class CreateDoadores < ActiveRecord::Migration
  def change
    create_table :doadores do |t|
      t.string :nome
      t.datetime :dtNascimento
      t.string :tipoSanguineo
      t.string :genero
      t.string :estado
      t.string :cidade
      t.string :emailPrincipal
      t.string :emailAlternativo

      t.timestamps
    end
  end
end
