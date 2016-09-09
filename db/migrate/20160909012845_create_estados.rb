class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :EST_NOME
      t.string :EST_SIGLA

      t.timestamps
    end
  end
end
