class CreateMapas < ActiveRecord::Migration
  def change
    create_table :mapas do |t|
      t.integer :numero
      t.integer :pontuacao

      t.timestamps null: false
    end
  end
end
