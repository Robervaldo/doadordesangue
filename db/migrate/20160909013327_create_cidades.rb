class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
      t.string :CID_NOME
      t.integer :CID_ESTADO

      t.timestamps
    end
  end
end
