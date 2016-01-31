class AddNomeToJogadors < ActiveRecord::Migration
  def change
    add_column :jogadors, :nome, :string
  end
end
