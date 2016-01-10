class CreatePontuacaos < ActiveRecord::Migration
  def change
    create_table :pontuacaos do |t|
      t.references :jogador, index: true, foreign_key: true
      t.references :mapa, index: true, foreign_key: true
      t.float :pontuacao

      t.timestamps null: false
    end
  end
end
