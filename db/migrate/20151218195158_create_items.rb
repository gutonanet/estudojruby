class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :descricao
      t.integer :funcao
      t.integer :elemento

      t.timestamps null: false
    end
  end
end
