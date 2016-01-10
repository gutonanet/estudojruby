class CreateJogadors < ActiveRecord::Migration
  def change
    create_table :jogadors do |t|
      t.string :login
      t.boolean :permite_audio
      t.boolean :permite_musica
      t.integer :moedas

      t.timestamps null: false
    end
  end
end
