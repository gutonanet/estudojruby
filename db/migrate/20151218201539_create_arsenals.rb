class CreateArsenals < ActiveRecord::Migration
  def change
    create_table :arsenals do |t|
      t.references :jogador, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
