class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :menu_id
      t.string :descricao
      t.string :link

      t.timestamps null: false
    end
  end
end
