class RemoveSenhaFromJogadors < ActiveRecord::Migration
  def change
    remove_column :jogadors, :senha, :string
  end
end
